package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §-!0§.§&!!§;
   import §-!0§.§1^§;
   import §9!n§.§@!T§;
   import §?!-§.§'!V§;
   import flash.text.TextFieldAutoSize;
   
   public class §'§ extends §^r§
   {
       
      
      public function §'§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §?P§ = true;
            if(_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr60);
         }
         addr38:
         §+!$§ = new §2U§(this);
         if(!(_loc3_ && _loc1_))
         {
            addr60:
            §+!$§.init(§=!Z§.§;K§.Views.View_FacebookLevelPause[0]);
         }
         var _loc1_:§;!j§ = §+!$§.getItemByName("TextField_ChapterName") as §;!j§;
         if(!_loc3_)
         {
            _loc1_.§!D§.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activate();
            if(_loc2_)
            {
               (§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip.alpha = 0;
               if(_loc2_ || _loc2_)
               {
                  addr63:
                  (§+!$§.getItemByName("Container_FullGame") as §[!s§).mClip.alpha = 0;
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§;!j§ = null;
         if(§1^§.§ ]§ != null)
         {
            if(_loc2_ || _loc3_)
            {
               _loc1_ = §+!$§.getItemByName("TextField_ChapterName") as §;!j§;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.§!D§.text = §1^§.§'j§().writtenName;
                  if(!_loc2_)
                  {
                  }
                  addr63:
                  (§+!$§.getItemByName("Container_PauseMenu") as §[!s§).x = §^r§.OFFSCREEN_X;
                  if(!_loc3_)
                  {
                     this.setPauseMenuButtonsEnabled(false);
                     if(_loc2_)
                     {
                        §'!V§.pause();
                        if(_loc2_)
                        {
                           if(§%!&§ != null)
                           {
                              if(!_loc2_)
                              {
                              }
                              §§goto(addr179);
                           }
                           §%!&§ = §@!T§.§`!t§.§0!s§(§@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":0},null,0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":1},{"alpha":0},0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("Container_FullGame") as §[!s§).mClip,{
                              "alpha":1,
                              "scaleX":1,
                              "scaleY":1
                           },{
                              "scaleX":0,
                              "scaleY":0,
                              "alpha":1
                           },0.25,§@!T§.§41§));
                           addr176:
                           §%!&§.onComplete = §[!e§;
                           addr179:
                           §%!&§.play();
                           return;
                           addr106:
                        }
                        §%!&§.stop();
                        if(_loc3_ && this)
                        {
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr176);
               }
               (§+!$§.getItemByName("TextField_LevelName") as §;!j§).§!D§.text = §&!!§.§0!'§(§1^§.§ ]§);
               §§goto(addr63);
            }
            §§goto(addr179);
         }
         §§goto(addr63);
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            (§+!$§.getItemByName("Button_Resume") as §#!'§).setEnabled(param1);
            if(_loc2_ || param1)
            {
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setEnabled(param1);
            }
         }
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§+!$§.getItemByName("Button_Resume") as §#!'§).setComponentVisualState(param1);
            if(_loc3_ || _loc2_)
            {
               (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(param1);
            }
         }
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§%!&§ != null)
            {
               if(_loc2_)
               {
                  §%!&§.stop();
                  if(_loc2_)
                  {
                     §%!&§ = §@!T§.§`!t§.§0!s§(§@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":OFFSCREEN_X},null,0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":0},{"alpha":1},0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("Container_FullGame") as §[!s§).mClip,{"alpha":0},{"alpha":1},0.25));
                     §§goto(addr33);
                  }
                  §§goto(addr110);
               }
               §§goto(addr105);
            }
         }
         addr33:
         if(_loc2_)
         {
            addr105:
            §%!&§.onComplete = §7!T§;
            if(_loc2_)
            {
               addr110:
               §%!&§.play();
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            if("FULL_GAME" === _loc4_)
            {
               addr78:
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
                  §#!?§.§8;§.§4!`§("Pause");
                  if(!(_loc5_ && param2))
                  {
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!(_loc5_ && param3))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr78);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.setViewSize(param1,param2);
            if(_loc4_)
            {
               §§goto(addr40);
            }
            §§goto(addr49);
         }
         addr40:
         if(§%!&§)
         {
            if(!(_loc3_ && this))
            {
               addr49:
               §%!&§.updateState();
            }
         }
      }
   }
}
