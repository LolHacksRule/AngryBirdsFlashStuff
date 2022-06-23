package § !@§
{
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   
   public class §7L§ extends §+W§
   {
       
      
      private var §5G§:int = 0;
      
      public function §7L§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param3);
            if(!_loc5_)
            {
               this.§5G§ = param2;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            super.activate();
            if(!_loc4_)
            {
               addr24:
               §=w§.§ o§.background.§ ! §();
            }
            var _loc1_:§@Z§ = §[4§.§!_§(§[4§.§"!>§);
            if(_loc3_ || _loc3_)
            {
               if(_loc1_)
               {
                  §§push(_loc1_.§+v§());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(int(§§pop()));
                     if(_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(_loc3_ || this)
                        {
                           if(§=w§.§ o§.slingshot)
                           {
                              if(_loc3_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr87);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr110);
                     }
                  }
                  addr87:
                  §§push(§=w§.§ o§.slingshot.§7!@§());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(int(§§pop() + §§pop()));
                     if(_loc3_ || _loc2_)
                     {
                        _loc2_ = §§pop();
                        if(_loc3_)
                        {
                           addr110:
                           this.§5G§ = Math.min(this.§5G§,_loc2_);
                           §§goto(addr157);
                        }
                     }
                     §§goto(addr129);
                  }
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        addr140:
                        §]F§.setText(this.§5G§.toString(),"TextField_ScoreToBeat");
                     }
                  }
                  else
                  {
                     §]F§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
                  }
                  §§goto(addr157);
                  return;
               }
               §§goto(addr129);
            }
            §§goto(addr110);
         }
         §§goto(addr24);
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §5A§.§;L§.Views.View_LevelEndEmbedRio[0];
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(!(_loc1_ && _loc2_))
         {
            if(§6g§)
            {
               if(!_loc1_)
               {
                  §0L§();
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
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
               if(_loc5_ || param3)
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
                  §<!7§.§4!"§.§^"§("LevelWin");
                  if(!_loc6_)
                  {
                     break;
                  }
                  addr58:
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!(_loc6_ && this))
                  {
                     §§goto(addr58);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.§`!E§());
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            super.setScoreData();
            if(_loc4_)
            {
               if(§6g§)
               {
                  if(!_loc3_)
                  {
                     addr64:
                     (§=w§.§ !H§ as §<!7§).§"A§(§[4§.§"!>§);
                  }
               }
            }
            §§push(AngryBirdsFP11.sUserProgress.§`!E§());
            if(!_loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || this)
            {
               if(_loc2_ > _loc1_)
               {
               }
            }
            return;
         }
         §§goto(addr64);
      }
   }
}
