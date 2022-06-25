package §9c§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §^h§.§5!9§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class StateLevelEndEagle extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
      
      {
         var STATE_NAME:Boolean = true;
         var LOOP_CHANNEL_NAME:Boolean = false;
         if(STATE_NAME || STATE_NAME)
         {
            loop0:
            while(true)
            {
               STATE_NAME = "LevelEndEagleState";
               while(true)
               {
                  loop2:
                  while(!(LOOP_CHANNEL_NAME && STATE_NAME))
                  {
                     while(true)
                     {
                        LOOP_CHANNEL_NAME = "ScoreLoopCountChannel";
                        if(!(LOOP_CHANNEL_NAME && LOOP_CHANNEL_NAME))
                        {
                           if(!LOOP_CHANNEL_NAME)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private var §!9§:§9h§;
      
      private var §@!A§:§5!9§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §`n§:Number;
      
      protected var § L§:int;
      
      public function StateLevelEndEagle(initState:Boolean = false, name:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        super(initState,name);
                        loop3:
                        while(!(_loc3_ && this))
                        {
                           while(_loc3_ && _loc3_)
                           {
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         loop0:
         while(true)
         {
            super.init();
            loop1:
            while(true)
            {
               while(true)
               {
                  §^,§ = new §-!H§(this);
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §^,§.init(§3!5§.§4@§.Views.View_LevelEndEagle[0]);
                        addr126:
                        while(_loc1_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                  }
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
                  this.§`n§ = (§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).width;
                  while(true)
                  {
                     loop8:
                     while(_loc1_)
                     {
                        SoundEngine.§"!"§(LOOP_CHANNEL_NAME,1,1);
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop8;
                        }
                        §§goto(addr126);
                     }
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && isNewEagleHighScore)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     super.activate();
                     loop3:
                     while(true)
                     {
                        loop4:
                        for(; !_loc4_; while(_loc3_ || this)
                        {
                           §^,§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
                           §§goto(addr109);
                        })
                        {
                           this.§@!A§ = new §5!9§(0,0,0,0);
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 §^,§.movieClip.addChildAt(this.§@!A§,§^,§.movieClip.numChildren - 1);
                                 while(!_loc4_)
                                 {
                                    continue loop4;
                                    addr39:
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          this.§@!A§.§89§(0.7);
                                          addr54:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            SoundEngine.§`B§("LevelCompletedTheme1");
                                                            addr81:
                                                            while(true)
                                                            {
                                                               while(_loc3_)
                                                               {
                                                                  continue loop15;
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               addr109:
                                                               while(!(_loc4_ && _loc3_))
                                                               {
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §^,§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
                                                         continue loop11;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr84);
                                             }
                                             §§goto(addr81);
                                          }
                                          continue loop5;
                                       }
                                       continue;
                                    }
                                    §§push(§4!T§.controller.getEagleScore());
                                    if(!_loc4_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    var newEagleScore:* = §§pop();
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr214:
                                       this.§ L§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§!=§);
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr214);
                                             }
                                             §§push(newEagleScore > this.§ L§);
                                             if(_loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             var isNewEagleHighScore:* = §§pop();
                                             if(!(_loc4_ && newEagleScore))
                                             {
                                                addr413:
                                                if(isNewEagleHighScore)
                                                {
                                                   addr403:
                                                   if(!(_loc4_ && isNewEagleHighScore))
                                                   {
                                                      this.§'!P§(newEagleScore);
                                                      (§^,§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§ ^§.text = newEagleScore + "%";
                                                      SoundEngine.§`B§("Hiscore_Count",LOOP_CHANNEL_NAME,100);
                                                      addr390:
                                                      addr366:
                                                      addr399:
                                                      addr411:
                                                      if(_loc3_ || isNewEagleHighScore)
                                                      {
                                                         addr339:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(this);
                                                            §§push(TweenManager.§&!'§);
                                                            §§push(this);
                                                            §§push({"mEagleScoreCounter":newEagleScore});
                                                            §§push({"mEagleScoreCounter":0});
                                                            §§push(newEagleScore / 100);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() * 4);
                                                            }
                                                            §§pop().§!9§ = §§pop().§3L§(§§pop(),§§pop(),§§pop(),§§pop());
                                                            addr329:
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               addr297:
                                                               this.§!9§.onComplete = this.§1!e§;
                                                               addr300:
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr289:
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(this.§!9§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop().play();
                                                                              addr277:
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§goto(addr329);
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                                 §§goto(addr390);
                                                                              }
                                                                              §§goto(addr366);
                                                                           }
                                                                           §§goto(addr297);
                                                                        }
                                                                        §§goto(addr390);
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               addr307:
                                                               §§goto(addr307);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         §§goto(addr403);
                                                      }
                                                      addr393:
                                                      §§goto(addr393);
                                                      addr367:
                                                   }
                                                   §§goto(addr413);
                                                }
                                                §§goto(addr367);
                                             }
                                             §§goto(addr390);
                                          }
                                          §§goto(addr214);
                                          addr231:
                                       }
                                       addr233:
                                       §§goto(addr233);
                                    }
                                    §§goto(addr231);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      protected function §'!P§(newEagleScore:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            do
            {
               do
               {
                  AngryBirdsFP11.sUserProgress.§;!+§(LevelManager.§!=§,newEagleScore);
                  while(!(_loc3_ || _loc2_))
                  {
                  }
               }
               while(_loc2_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §1!e§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         var glowFilter:GlowFilter = null;
         if(_loc2_ || _loc3_)
         {
            loop0:
            while(true)
            {
               SoundEngine.§5v§(LOOP_CHANNEL_NAME);
               loop1:
               while(true)
               {
                  loop2:
                  while(this.mEagleScoreCounter == 100)
                  {
                     while(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        loop4:
                        while(true)
                        {
                           addr66:
                           loop5:
                           while(true)
                           {
                              addr37:
                              addr101:
                              while(true)
                              {
                                 SoundEngine.§`B§("Hiscore_Badge",LOOP_CHANNEL_NAME);
                                 addr45:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                              glowFilter = new GlowFilter(16777215,1,22,22,2.5,10);
                              if(!(_loc3_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    (§^,§.getItemByName("MovieClip_EagleMeterEffect") as §+,§).setVisibility(true);
                                    addr128:
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(true)
                                       {
                                          break loop2;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          (§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).mClip.filters = [glowFilter];
                                          while(_loc2_)
                                          {
                                             if(_loc2_ || glowFilter)
                                             {
                                                continue loop11;
                                             }
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc3_ && glowFilter))
                                             {
                                                continue loop11;
                                             }
                                             addr183:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr183);
                           }
                        }
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        if(!_loc3_)
                        {
                           if(false)
                           {
                              §§goto(addr37);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr45);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               addr32:
               if(!(_loc4_ || clipRect))
               {
                  continue;
               }
               if(false)
               {
                  loop2:
                  while(true)
                  {
                     while(_loc4_)
                     {
                        if(!(_loc4_ || superReturn))
                        {
                           continue;
                        }
                        §§goto(addr32);
                     }
                     addr48:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
               §§push(super.run(deltaTime));
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var superReturn:* = §§pop();
               if(!(_loc5_ && clipRect))
               {
                  loop4:
                  while(true)
                  {
                     §§push(superReturn);
                     loop5:
                     while(true)
                     {
                        if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                        {
                           loop6:
                           while(int(this.mEagleScoreCounter) <= this.§ L§)
                           {
                              (§^,§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§ ^§.text = int(this.§ L§) + "%";
                              loop7:
                              for(; _loc4_; if(_loc5_ && deltaTime)
                              {
                                 continue;
                              },if(!_loc5_)
                              {
                                 §§goto(addr86);
                              },§§goto(addr168))
                              {
                                 if(_loc5_)
                                 {
                                    break loop6;
                                 }
                                 loop8:
                                 while(_loc4_)
                                 {
                                    if(!(_loc5_ && clipRect))
                                    {
                                       do
                                       {
                                          (§^,§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§ ^§.text = int(this.§ L§) + "%";
                                          while(!_loc4_)
                                          {
                                          }
                                          if(!(_loc5_ && deltaTime))
                                          {
                                             continue loop7;
                                          }
                                          continue loop8;
                                       }
                                       while(false);
                                       
                                       var clipRect:Rectangle = new Rectangle(0,0,this.§`n§ * (this.mEagleScoreCounter / 100),(§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).height);
                                       if(_loc4_)
                                       {
                                          (§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).mClip.scrollRect = clipRect;
                                          (§^,§.getItemByName("MovieClip_EagleMeterEffect") as §+,§).mClip.rotation = (§^,§.getItemByName("MovieClip_EagleMeterEffect") as §+,§).mClip.rotation + deltaTime / 20;
                                          addr395:
                                          addr393:
                                          if(!_loc5_)
                                          {
                                             addr340:
                                             if(!_loc5_)
                                             {
                                                if(mNextState.length > 0)
                                                {
                                                   addr329:
                                                   if(!(_loc5_ && deltaTime))
                                                   {
                                                      §4!T§.§1t§.clearLevel();
                                                      addr337:
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc5_ && superReturn))
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  if(!(_loc4_ || deltaTime))
                                                                  {
                                                                     §§goto(addr329);
                                                                  }
                                                                  return StateBase.STATE_STATUS_COMPLETED;
                                                               }
                                                            }
                                                            §§goto(addr337);
                                                            addr322:
                                                         }
                                                         §§goto(addr395);
                                                      }
                                                      §§goto(addr393);
                                                   }
                                                   §§goto(addr340);
                                                }
                                                return StateBase.STATE_STATUS_RUNNING;
                                             }
                                             §§goto(addr395);
                                          }
                                          addr381:
                                          §§goto(addr381);
                                       }
                                       §§goto(addr322);
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    addr168:
                                    while(!(_loc4_ || deltaTime))
                                    {
                                       while(true)
                                       {
                                          (§^,§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§ ^§.text = int(this.mEagleScoreCounter) + "%";
                                          continue loop13;
                                       }
                                       continue loop13;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    while(true)
                                    {
                                       (§^,§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§ ^§.text = int(this.mEagleScoreCounter) + "%";
                                       break loop7;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    break loop5;
                                 }
                                 addr239:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                           if(_loc5_)
                           {
                              continue loop4;
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr243);
                  }
               }
               §§goto(addr177);
            }
         }
         §§goto(addr48);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§@!A§);
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 SoundEngine.§5v§(LOOP_CHANNEL_NAME);
                                 loop17:
                                 for(; !_loc2_; while(!(_loc2_ && this))
                                 {
                                    §§goto(addr134);
                                    §§goto(addr115);
                                 })
                                 {
                                    while(true)
                                    {
                                       loop19:
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          this.mEagleScoreCounter = 0;
                                          loop20:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr282:
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   while(!_loc2_)
                                                   {
                                                      §§push(this.§!9§);
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop22;
                                                            }
                                                            addr269:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               (§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).mClip.filters = [];
                                                               loop30:
                                                               while(_loc1_)
                                                               {
                                                                  addr214:
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              (§^,§.getItemByName("MovieClip_EagleMeterEffect") as §+,§).setVisibility(false);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr122:
                                                                                 if(!(_loc1_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    loop37:
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                          continue loop37;
                                                                                       }
                                                                                       continue loop31;
                                                                                    }
                                                                                    §§goto(addr167);
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr373);
                                                                        §§goto(addr214);
                                                                     }
                                                                     addr312:
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                               addr261:
                                                               while(true)
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                            addr201:
                                                         }
                                                      }
                                                      continue loop4;
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr312);
                                                   }
                                                   addr326:
                                                }
                                                break;
                                             }
                                             continue loop19;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr345);
                                             §§goto(addr282);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§@!A§ = null;
                                    §§goto(addr326);
                                 }
                              }
                              addr300:
                           }
                           while(true)
                           {
                              §§goto(addr381);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§@!A§);
                           if(!(_loc1_ || this))
                           {
                              break;
                           }
                           §§pop().clean();
                           §§goto(addr342);
                           §§goto(addr62);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr309);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            do
            {
               super.cleanup();
               while(_loc1_)
               {
               }
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
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
               addr206:
               while(true)
               {
                  if(_loc6_ || eventName)
                  {
                     if(!(_loc5_ && this))
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               var _loc4_:* = eventName;
               if(!_loc5_)
               {
                  §§push("NEXT_LEVEL");
                  if(_loc6_ || eventIndex)
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc4_);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || this)
                              {
                                 addr244:
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                    addr314:
                                 }
                              }
                              else
                              {
                                 addr323:
                                 §§push(3);
                                 if(_loc5_ && eventName)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push("REPLAY");
                              if(_loc6_ || eventIndex)
                              {
                                 if(_loc5_ && this)
                                 {
                                 }
                                 addr319:
                                 addr320:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr323);
                                    }
                                 }
                                 else if(true)
                                 {
                                    addr339:
                                    loop9:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          StateLevelLoadClassic.§'8§();
                                          mNextState = StateCutScene.STATE_NAME;
                                          break;
                                          addr186:
                                          addr172:
                                          addr181:
                                          addr155:
                                          addr175:
                                       case 1:
                                          StateLevelLoadClassic.§3`§();
                                          addr138:
                                          if(_loc6_ || eventIndex)
                                          {
                                             if(_loc6_)
                                             {
                                                mNextState = StateLevelLoadClassic.STATE_NAME;
                                                break;
                                                addr122:
                                                addr132:
                                             }
                                             else
                                             {
                                                §§goto(addr186);
                                             }
                                          }
                                          §§goto(addr172);
                                          addr152:
                                       case 2:
                                          loop2:
                                          while(true)
                                          {
                                             SoundEngine.§=O§();
                                             loop3:
                                             while(true)
                                             {
                                                if(_loc6_ || component)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_ || eventIndex)
                                                      {
                                                         if(!(_loc5_ && component))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               mNextState = StateLevelSelection.STATE_NAME;
                                                               while(true)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               break loop9;
                                                               addr80:
                                                            }
                                                            §§goto(addr138);
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr152);
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr122);
                                          }
                                          break;
                                       case 3:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!(_loc6_ || this))
                                                {
                                                   break;
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   AngryBirdsFP11.§8R§.§,!f§();
                                                   while(!_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         break loop5;
                                                      }
                                                      if(_loc6_ || eventIndex)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop9;
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr155);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr80);
                                                      }
                                                   }
                                                   §§goto(addr66);
                                                }
                                                continue;
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr175);
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr339);
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr339);
                              }
                              §§push(_loc4_);
                              if(!(_loc5_ && eventName))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(1);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr339);
                                       }
                                       else
                                       {
                                          §§goto(addr314);
                                       }
                                    }
                                    §§goto(addr339);
                                 }
                                 else
                                 {
                                    §§push("MENU");
                                    if(_loc6_)
                                    {
                                       addr282:
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_ || eventName)
                                          {
                                             addr293:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(2);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§goto(addr314);
                                                   }
                                                   §§goto(addr339);
                                                }
                                                else
                                                {
                                                   §§goto(addr334);
                                                }
                                             }
                                             else
                                             {
                                                §§push("FULLSCREEN_BUTTON");
                                                if(!_loc6_)
                                                {
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr320);
                                       }
                                    }
                                    §§goto(addr319);
                                 }
                              }
                              §§goto(addr293);
                           }
                           §§goto(addr339);
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr319);
                  }
                  §§goto(addr282);
               }
               §§goto(addr244);
            }
         }
         §§goto(addr206);
      }
   }
}
