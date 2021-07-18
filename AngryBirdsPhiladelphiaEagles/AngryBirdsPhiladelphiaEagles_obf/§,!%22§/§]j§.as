package §,!"§
{
   import §"U§.§!o§;
   import §&^§.§[!7§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]p§.§9!,§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   import flash.events.Event;
   
   public class §]j§ extends §<z§
   {
       
      
      private var §8§:int = 0;
      
      private var §`x§:§[!9§ = null;
      
      private var §@Y§:Boolean = false;
      
      private var §=!7§:Number = 0;
      
      public function §]j§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1,param3);
         }
         do
         {
            this.§8§ = param2;
         }
         while(_loc5_ && this);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            do
            {
               this.§=!7§ = (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.y;
            }
            while(_loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            this.§@Y§ = false;
            loop0:
            while(true)
            {
               §9!,§.§>o§.addEventListener(§9!,§.SERVER_CALL_COMPLETE,this.§6!"§);
               while(true)
               {
                  this.§8§ = AngryBirdsFP11.§`I§.§[u§(§`!K§.§5g§);
                  addr41:
                  while(_loc5_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §6!"§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = int(§`!K§.§5g§.split("-")[1]) - 1;
         if(!_loc3_)
         {
            if(!§!D§.§%2§(_loc2_))
            {
               §0q§.getItemByName("Button_NextLevel").setVisibility(true);
               if(!_loc3_)
               {
                  if(_loc3_ && _loc2_)
                  {
                     addr77:
                     §0q§.getItemByName("Button_NextLevel").setVisibility(false);
                     addr82:
                  }
                  else
                  {
                     addr72:
                  }
                  return;
               }
               §§goto(addr82);
            }
            §§goto(addr77);
         }
         §§goto(addr72);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §`Z§.§5c§.Views.View_LevelEndEmbedRio[0];
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.deActivate();
         }
      }
      
      override protected function showButtonsCutScene() : void
      {
      }
      
      override protected function showButtonsNormal() : void
      {
      }
      
      override protected function setMightyEagleFeather() : void
      {
      }
      
      override protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(§-M§)
         {
            loop0:
            while(true)
            {
               §!D§.§#!O§(§!D§.§6+§ + §`!K§.§5g§,param1);
               while(true)
               {
                  §§push(AngryBirdsFP11.§`I§);
                  loop2:
                  while(true)
                  {
                     §§push(§`!K§.§5g§);
                     addr120:
                     while(true)
                     {
                        §§push(param1);
                        addr121:
                        while(true)
                        {
                           §§pop().§,!0§(§§pop(),§§pop());
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr20);
      }
      
      private function §<!Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!this.§@Y§)
         {
            while(true)
            {
               (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.visible = true;
               while(true)
               {
                  (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.y = this.§=!7§ + 100;
                  if(_loc2_ && this)
                  {
                     break;
                  }
                  this.§`x§ = §3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip,{"y":this.§=!7§},null,1,§3C§.§4Z§);
                  if(!_loc1_)
                  {
                     continue;
                  }
                  this.§@Y§ = true;
                  §§push(this.§`x§);
                  while(true)
                  {
                     §§pop().onComplete = this.§<!Q§;
                     while(true)
                     {
                        §§push(this.§`x§);
                        if(_loc2_)
                        {
                           break;
                        }
                        §§pop().play();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr17);
                        }
                     }
                  }
               }
            }
         }
         addr17:
      }
      
      private function §4c§() : void
      {
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            if(§-M§)
            {
               §[!7§.playSound("Hiscore_Badge",§?!M§);
               loop5:
               while(true)
               {
                  §0q§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
                  loop6:
                  while(true)
                  {
                     §0q§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
                     while(true)
                     {
                        addr31:
                        while(true)
                        {
                           §0q§.setText("NEW HIGHSCORE!","TextField_ScoreToBeat");
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop6;
                           }
                           continue loop5;
                        }
                     }
                  }
               }
               addr66:
            }
            §§push(AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§));
            if(_loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(AngryBirdsFP11.§`I§.§7j§(§`!K§.§5g§,§#! §.controller.getScore()));
            if(_loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(_loc1_);
               loop0:
               while(true)
               {
                  §§push(100);
                  addr151:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 this.§<!Q§();
                              }
                              break;
                           }
                           return;
                           addr120:
                        }
                     }
                     addr161:
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
               addr150:
            }
            while(true)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(3);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr151);
                  }
                  §§goto(addr120);
               }
               else
               {
                  §§goto(addr150);
               }
            }
         }
         §§goto(addr66);
      }
      
      override protected function shakingOver() : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               §§push("NEXT_LEVEL");
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(!(_loc5_ || param3))
                           {
                              addr176:
                           }
                        }
                        else
                        {
                           addr180:
                           §§push(2);
                           if(_loc6_ && this)
                           {
                           }
                        }
                        addr193:
                        loop5:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(§`!K§.§6J§());
                              if(_loc5_)
                              {
                                 if(§§pop() != null)
                                 {
                                    §-O§.§ b§();
                                    addr100:
                                    loop1:
                                    while(true)
                                    {
                                       mNextState = §-O§.§-A§;
                                       break loop5;
                                       addr114:
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    break loop0;
                                 }
                                 while(true)
                                 {
                                    §`!K§.§!e§(§`!K§.§]!F§("1-1"));
                                    §§goto(addr114);
                                 }
                              }
                              continue;
                           case 1:
                              §-O§.§8!5§();
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    mNextState = §-O§.§-A§;
                                    if(!(_loc6_ && param1))
                                    {
                                       addr41:
                                       break loop0;
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr100);
                              }
                              break;
                           case 2:
                              mNextState = §@f§.§-A§;
                              break loop0;
                           default:
                              super.uiInteractionHandler(param1,param2,param3);
                              if(_loc5_ || param1)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(true)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr41);
                                 }
                                 else
                                 {
                                    §§goto(addr114);
                                 }
                              }
                        }
                        continue loop3;
                     }
                     §§push("REPLAY");
                     if(!(_loc6_ && param3))
                     {
                        addr147:
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           addr150:
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || this)
                              {
                                 addr168:
                                 §§push(1);
                                 if(_loc5_ || param3)
                                 {
                                    §§goto(addr176);
                                 }
                              }
                              else
                              {
                                 §§goto(addr180);
                              }
                              §§goto(addr193);
                           }
                           else
                           {
                              addr178:
                              §§push("MENU");
                              §§push(_loc4_);
                           }
                           §§goto(addr180);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr180);
                        }
                        else
                        {
                           §§push(3);
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr178);
                     §§goto(addr180);
                  }
                  §§goto(addr150);
               }
               §§goto(addr147);
            }
            §§goto(addr168);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.setScoreData();
            while(§-M§)
            {
               if(!_loc1_)
               {
                  (§#! §.§ A§ as §!D§).§%! §(§`!K§.§5g§);
               }
               if(!_loc1_)
               {
                  addr48:
                  break;
               }
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
