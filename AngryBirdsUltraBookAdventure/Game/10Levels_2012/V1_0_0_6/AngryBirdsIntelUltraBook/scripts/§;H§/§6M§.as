package §;H§
{
   import §#!H§.§^I§;
   import §+0§.§,!E§;
   import §1!E§.§==§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   
   public class §6M§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §"!s§ = "LevelEndFailStateRio";
         }
      }
      
      private var §4!E§:§^I§;
      
      public function §6M§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
         }
         do
         {
            §&!m§ = new §4`§(this);
            do
            {
               §&!m§.init(this.getViewXML());
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      protected function getViewXML() : XML
      {
         return § !I§.§3!a§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(LevelManager.§7!X§());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(Boolean(_loc1_));
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr198:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr101:
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(!§§pop())
                                       {
                                          (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(true);
                                          loop13:
                                          for(; !(_loc2_ && _loc3_); (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false),if(!(_loc3_ || _loc1_))
                                          {
                                             continue;
                                          },if(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                addr186:
                                                (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                                                (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
                                                §§goto(addr151);
                                                addr193:
                                             }
                                             §§goto(addr26);
                                          },§§goto(addr193))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   addr151:
                                                   (§&!m§.getItemByName("Button_MightyEagle") as §==§).setVisibility(true);
                                                }
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   addr26:
                                                   return;
                                                   addr142:
                                                }
                                                continue loop4;
                                             }
                                             addr119:
                                             addr119:
                                             while(true)
                                             {
                                                (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
                                                addr126:
                                                while(true)
                                                {
                                                   (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
                                                   break loop13;
                                                }
                                             }
                                          }
                                          while(_loc2_)
                                          {
                                             §§goto(addr126);
                                          }
                                          if(!(_loc3_ || this))
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr26);
                                       }
                                       §§goto(addr119);
                                    }
                                 }
                                 addr219:
                                 while(!_loc2_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc3_ || _loc3_))
                     {
                        continue loop1;
                     }
                     if(!§§pop())
                     {
                        §§goto(addr231);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr91);
               }
            }
         }
         §§goto(addr119);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
            do
            {
               (§&!m§.getItemByName("Button_MightyEagle") as §==§).setVisibility(false);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            while(true)
            {
               this.§4!E§ = new §^I§(0,0,0,0);
               loop1:
               for(; _loc2_ || _loc1_; if(_loc1_ && _loc1_)
               {
                  continue;
               },§§goto(addr64))
               {
                  §&!m§.movieClip.addChildAt(this.§4!E§,§&!m§.movieClip.numChildren - 1);
                  loop2:
                  while(true)
                  {
                     this.showButtons();
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr64:
                        this.§4!E§.§;'§(0.7);
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                           addr36:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        §^!c§.§5!Y§.clearLevel();
                        return §,!E§.STATE_STATUS_COMPLETED;
                     }
                  }
                  §§goto(addr27);
               }
               return _loc2_;
            }
         }
         addr27:
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§4!E§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        this.setButtonStates(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        addr59:
                        loop8:
                        while(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              this.hideButtons();
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break loop7;
                                 }
                                 §§goto(addr115);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§4!E§ = null;
                                    break loop8;
                                 }
                                 addr97:
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              continue loop7;
                           }
                           §§goto(addr59);
                        }
                     }
                     return;
                  }
                  addr120:
                  if(!(_loc1_ && _loc2_))
                  {
                     if(!§&!m§.movieClip.contains(this.§4!E§))
                     {
                        continue;
                     }
                  }
                  while(true)
                  {
                     §&!m§.movieClip.removeChild(this.§4!E§);
                  }
                  addr115:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
               loop1:
               while(true)
               {
                  (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(param1);
                  while(true)
                  {
                     (§&!m§.getItemByName("Button_CutScene") as §==§).setComponentVisualState(param1);
                     loop3:
                     while(!(_loc2_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentVisualState(param1);
                              if(!(_loc2_ && param1))
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            §§push("NEXT_LEVEL");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        addr115:
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr141:
                        }
                     }
                     else
                     {
                        addr173:
                        §§push(3);
                        if(!(_loc6_ && param1))
                        {
                           addr181:
                        }
                     }
                     §§goto(addr186);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc6_ && param3))
                     {
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || this)
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    §§goto(addr141);
                                 }
                                 else
                                 {
                                    addr169:
                                 }
                              }
                              else
                              {
                                 §§goto(addr173);
                              }
                              §§goto(addr186);
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc5_ || param1)
                              {
                                 addr160:
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr172);
                              }
                              addr171:
                              addr172:
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr173);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              addr186:
                              switch(§§pop())
                              {
                                 case 0:
                                    §;W§.§&p§();
                                    mNextState = this.§=!n§();
                                    break;
                                    addr78:
                                    addr73:
                                 case 1:
                                    §;W§.§&!5§();
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr78);
                                    }
                                    break;
                                 case 2:
                                    §9'§.§0D§();
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr27:
                                          mNextState = this.§`!n§();
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          break;
                                       }
                                       §§goto(addr73);
                                    }
                                    break;
                                 case 3:
                                    AngryBirdsFP11.§3l§.§1T§();
                                    if(_loc5_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr27);
                                    }
                              }
                              return;
                              §§push(_loc4_);
                           }
                           §§goto(addr173);
                        }
                        if(§§pop() === §§pop())
                        {
                           if(!_loc6_)
                           {
                              §§push(2);
                              if(!_loc6_)
                              {
                                 §§goto(addr169);
                              }
                              else
                              {
                                 §§goto(addr181);
                              }
                           }
                           else
                           {
                              §§goto(addr173);
                           }
                           §§goto(addr186);
                        }
                        else
                        {
                           §§push("FULLSCREEN_BUTTON");
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr171);
                  }
               }
               §§goto(addr172);
            }
            §§goto(addr160);
         }
         §§goto(addr115);
      }
      
      protected function §`[§() : String
      {
         return §;W§.§"!s§;
      }
      
      protected function §`!n§() : String
      {
         return §!y§.§"!s§;
      }
      
      protected function §=!n§() : String
      {
         return StateCutScene.§"!s§;
      }
   }
}
