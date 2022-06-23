package §>!A§
{
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §<!G§.§!I§;
   
   public class §+=§ extends §"'§
   {
       
      
      private var §3Z§:int = 0;
      
      public function §+=§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param3);
            if(!_loc5_)
            {
               this.§3Z§ = param2;
            }
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
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc3_ && _loc2_))
         {
            super.activate();
            if(!_loc3_)
            {
               addr30:
               §[k§.§&@§.background.§]I§();
            }
            var _loc1_:§&!;§ = §5j§.§%!I§(§5j§.§%V§);
            if(_loc1_)
            {
               §§push(_loc1_.§="§());
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
                  if(!(_loc3_ && _loc3_))
                  {
                     addr54:
                     _loc2_ = §§pop();
                     if(§[k§.§&@§.slingshot)
                     {
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§[k§.§&@§.slingshot.§,!G§());
                              if(!_loc3_)
                              {
                                 §§push(int(§§pop() + §§pop()));
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr102:
                                       this.§3Z§ = Math.min(this.§3Z§,_loc2_);
                                       if(_loc4_)
                                       {
                                          §§goto(addr123);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr146);
                                 }
                                 addr123:
                                 §§goto(addr124);
                              }
                              addr124:
                              §§goto(addr111);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr123);
               }
               §§goto(addr54);
            }
            addr111:
            if(this.§3Z§ > 0)
            {
               §[=§.setText(this.§3Z§.toString(),"TextField_ScoreToBeat");
               if(!_loc4_)
               {
                  addr146:
                  §[=§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
               }
               else
               {
                  addr133:
               }
            }
            else
            {
               §[=§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr146);
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §!I§.§7y§.Views.View_LevelEndEmbedRio[0];
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(§>!<§)
            {
               if(_loc1_ || _loc2_)
               {
                  §[D§();
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("FULL_GAME" === _loc4_)
            {
               addr67:
               §§push(0);
               if(_loc6_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §#W§.§[G§.§=K§("LevelWin");
                  if(!_loc6_)
                  {
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!(_loc6_ && param3))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr67);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.§@!%§());
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            super.setScoreData();
            if(!_loc4_)
            {
               §§goto(addr49);
            }
            §§goto(addr53);
         }
         addr49:
         if(§>!<§)
         {
            if(!_loc4_)
            {
               addr53:
               (§[k§.§;!+§ as §#W§).§0p§(§5j§.§%V§);
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.§@!%§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            if(_loc2_ > _loc1_)
            {
            }
         }
      }
   }
}
