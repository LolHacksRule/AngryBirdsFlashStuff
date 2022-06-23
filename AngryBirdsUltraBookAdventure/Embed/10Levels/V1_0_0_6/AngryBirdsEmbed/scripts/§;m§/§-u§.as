package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§06§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   import §`!0§.§"?§;
   
   public class §-u§ extends § !F§
   {
       
      
      private var §>,§:int = 0;
      
      public function §-u§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param3);
            if(!_loc5_)
            {
               this.§>,§ = param2;
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
               §"h§.§1C§.background.§!#§();
            }
            var _loc1_:§^!9§ = §59§.§'Y§(§59§.§%j§);
            if(_loc1_)
            {
               §§push(_loc1_.§#f§());
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
                  if(!(_loc3_ && _loc3_))
                  {
                     addr54:
                     _loc2_ = §§pop();
                     if(§"h§.§1C§.slingshot)
                     {
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§"h§.§1C§.slingshot.§<w§());
                              if(!_loc3_)
                              {
                                 §§push(int(§§pop() + §§pop()));
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr102:
                                       this.§>,§ = Math.min(this.§>,§,_loc2_);
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
            if(this.§>,§ > 0)
            {
               §-f§.setText(this.§>,§.toString(),"TextField_ScoreToBeat");
               if(!_loc4_)
               {
                  addr146:
                  §-f§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
               }
               else
               {
                  addr133:
               }
            }
            else
            {
               §-f§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
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
         return §06§.§-`§.Views.View_LevelEndEmbedRio[0];
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
            if(§#>§)
            {
               if(_loc1_ || _loc2_)
               {
                  §"<§();
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
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
                  §+!0§.§2[§.§5"§("LevelWin");
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
         §§push(AngryBirdsFP11.sUserProgress.§0!F§());
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
         if(§#>§)
         {
            if(!_loc4_)
            {
               addr53:
               (§"h§.§'7§ as §+!0§).§?,§(§59§.§%j§);
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.§0!F§());
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
