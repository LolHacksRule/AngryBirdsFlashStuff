package §1!F§
{
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §?!-§.§'!V§;
   
   public class §6;§ extends §0k§
   {
       
      
      private var §"Q§:int = 0;
      
      public function §6;§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param3);
            if(_loc5_)
            {
               this.§"Q§ = param2;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            super.activate();
            if(_loc3_ || _loc1_)
            {
               addr29:
               §'!V§.§1!2§.background.§8!n§();
            }
            var _loc1_:§2! § = §1^§.§'!_§(§1^§.§ ]§);
            if(_loc3_ || this)
            {
               if(_loc1_)
               {
                  §§push(_loc1_.§]+§());
                  if(_loc3_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc4_ && this))
                     {
                        _loc2_ = §§pop();
                        if(_loc3_)
                        {
                           if(§'!V§.§1!2§.slingshot)
                           {
                              if(_loc3_ || this)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§push(§'!V§.§1!2§.slingshot.§6J§());
                                    if(_loc3_)
                                    {
                                       §§push(int(§§pop() + §§pop()));
                                       if(!_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr103);
                                       }
                                    }
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr103);
                           }
                           addr103:
                           this.§"Q§ = Math.min(this.§"Q§,_loc2_);
                           if(!(_loc4_ && _loc1_))
                           {
                              addr129:
                              if(this.§"Q§ > 0)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §+!$§.setText(this.§"Q§.toString(),"TextField_ScoreToBeat");
                                 }
                                 §§goto(addr155);
                              }
                              else
                              {
                                 §+!$§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
                              }
                              §§goto(addr155);
                           }
                           §+!$§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
                           §§goto(addr155);
                        }
                        addr155:
                        return;
                     }
                  }
               }
               §§goto(addr129);
            }
            §§goto(addr103);
         }
         §§goto(addr29);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §=!Z§.§;K§.Views.View_LevelEndEmbedRio[0];
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§8!_§)
            {
               if(_loc2_)
               {
                  §77§();
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("FULL_GAME" === _loc4_)
            {
               addr68:
               §§push(0);
               if(!_loc6_)
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
                  §#!?§.§8;§.§4!`§("LevelWin");
                  if(!(_loc6_ || param1))
                  {
                     break;
                  }
                  §§goto(addr78);
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr78);
            }
            addr78:
            return;
         }
         §§goto(addr68);
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
         §§push(AngryBirdsFP11.sUserProgress.§#!p§());
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
               §§goto(addr39);
            }
            §§goto(addr58);
         }
         addr39:
         if(§8!_§)
         {
            if(_loc3_ || _loc2_)
            {
               addr58:
               (§'!V§.§6!O§ as §#!?§).§]R§(§1^§.§ ]§);
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.§#!p§());
         if(_loc3_)
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
