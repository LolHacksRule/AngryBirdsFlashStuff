package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §=!B§.§59§;
   import §=!B§.§;p§;
   import §?!+§.§,!G§;
   import §`!0§.§"?§;
   import flash.text.TextFieldAutoSize;
   
   public class §!!8§ extends §6e§
   {
       
      
      public function §!!8§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §?z§ = true;
            if(!(_loc3_ && this))
            {
               §-f§ = new §0#§(this);
               if(_loc3_)
               {
               }
               §§goto(addr68);
            }
            §-f§.init(§06§.§-`§.Views.View_FacebookLevelPause[0]);
         }
         addr68:
         var _loc1_:§<k§ = §-f§.getItemByName("TextField_ChapterName") as §<k§;
         if(_loc2_ || this)
         {
            _loc1_.§5+§.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            if(!_loc2_)
            {
               (§-f§.getItemByName("MovieClip_DarkBG") as §"m§).mClip.alpha = 0;
               if(!(_loc2_ && _loc1_))
               {
                  (§-f§.getItemByName("Container_FullGame") as §1!=§).mClip.alpha = 0;
               }
            }
         }
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§<k§ = null;
         if(§59§.§%j§ != null)
         {
            if(_loc2_)
            {
               _loc1_ = §-f§.getItemByName("TextField_ChapterName") as §<k§;
               if(_loc2_)
               {
                  _loc1_.§5+§.text = §59§.§8!F§().writtenName;
                  if(_loc2_)
                  {
                     (§-f§.getItemByName("TextField_LevelName") as §<k§).§5+§.text = §;p§.§,M§(§59§.§%j§);
                     addr53:
                     (§-f§.getItemByName("Container_PauseMenu") as §1!=§).x = §6e§.OFFSCREEN_X;
                     if(_loc2_ || _loc2_)
                     {
                        this.setPauseMenuButtonsEnabled(false);
                        §"h§.pause();
                        if(_loc2_ || _loc2_)
                        {
                           if(§'!%§ != null)
                           {
                              addr93:
                              §'!%§.stop();
                              if(_loc3_)
                              {
                              }
                              §§goto(addr177);
                           }
                           §'!%§ = §,!G§.§@j§.§2!'§(§,!G§.§@j§.§47§(§-f§.getItemByName("Container_PauseMenu") as §1!=§,{"x":0},null,0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("MovieClip_DarkBG") as §"m§).mClip,{"alpha":1},{"alpha":0},0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("Container_FullGame") as §1!=§).mClip,{
                              "alpha":1,
                              "scaleX":1,
                              "scaleY":1
                           },{
                              "scaleX":0,
                              "scaleY":0,
                              "alpha":1
                           },0.25,§,!G§.§5]§));
                           if(!(_loc3_ && _loc2_))
                           {
                              §'!%§.onComplete = §7!D§;
                              §§goto(addr177);
                           }
                           addr177:
                           §'!%§.play();
                           return;
                        }
                        §§goto(addr93);
                     }
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr93);
         }
         §§goto(addr53);
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§-f§.getItemByName("Button_Resume") as §6<§).setEnabled(param1);
            if(!(_loc3_ && _loc2_))
            {
               (§-f§.getItemByName("Button_Replay") as §6<§).setEnabled(param1);
            }
         }
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§-f§.getItemByName("Button_Resume") as §6<§).setComponentVisualState(param1);
            if(_loc2_)
            {
               addr27:
               (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(param1);
            }
            return;
         }
         §§goto(addr27);
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§'!%§ != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §'!%§.stop();
                  if(!_loc2_)
                  {
                     §'!%§ = §,!G§.§@j§.§2!'§(§,!G§.§@j§.§47§(§-f§.getItemByName("Container_PauseMenu") as §1!=§,{"x":OFFSCREEN_X},null,0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("MovieClip_DarkBG") as §"m§).mClip,{"alpha":0},{"alpha":1},0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("Container_FullGame") as §1!=§).mClip,{"alpha":0},{"alpha":1},0.25));
                     addr37:
                     if(_loc1_)
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr114);
                  }
               }
               addr109:
               §'!%§.onComplete = §<I§;
               if(_loc1_)
               {
                  addr114:
                  §'!%§.play();
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param1)
         {
            if("FULL_GAME" === _loc4_)
            {
               addr72:
               §§push(0);
               if(_loc5_ || this)
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
                  §+!0§.§2[§.§5"§("Pause");
                  if(!(_loc6_ && param1))
                  {
                     break;
                  }
                  addr58:
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!_loc6_)
                  {
                     §§goto(addr58);
                  }
            }
            return;
         }
         §§goto(addr72);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setViewSize(param1,param2);
            if(!_loc4_)
            {
               addr24:
               if(§'!%§)
               {
                  if(_loc3_)
                  {
                     §'!%§.updateState();
                  }
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
