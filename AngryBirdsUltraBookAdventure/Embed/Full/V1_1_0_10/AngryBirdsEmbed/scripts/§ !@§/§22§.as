package § !@§
{
   import §#P§.§@7§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §%4§.§`a§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §1!-§.§[4§;
   import §1!-§.§^!8§;
   import §5!L§.§=w§;
   import flash.text.TextFieldAutoSize;
   
   public class §22§ extends §7§
   {
       
      
      public function §22§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §+_§ = true;
            if(!_loc2_)
            {
               §]F§ = new §4!,§(this);
               if(_loc3_)
               {
                  §]F§.init(§5A§.§;L§.Views.View_FacebookLevelPause[0]);
               }
            }
         }
         var _loc1_:§`a§ = §]F§.getItemByName("TextField_ChapterName") as §`a§;
         if(_loc3_)
         {
            _loc1_.§@w§.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            if(_loc2_)
            {
               (§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip.alpha = 0;
               if(_loc2_)
               {
                  (§]F§.getItemByName("Container_FullGame") as §4!=§).mClip.alpha = 0;
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
         var _loc1_:§`a§ = null;
         if(!(_loc3_ && this))
         {
            if(§[4§.§"!>§ != null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_ = §]F§.getItemByName("TextField_ChapterName") as §`a§;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.§@w§.text = §[4§.§5C§().writtenName;
                     if(_loc2_ || this)
                     {
                        (§]F§.getItemByName("TextField_LevelName") as §`a§).§@w§.text = §^!8§.§@!"§(§[4§.§"!>§);
                        (§]F§.getItemByName("Container_PauseMenu") as §4!=§).x = §7§.OFFSCREEN_X;
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr95);
            }
            addr75:
            if(_loc2_)
            {
               addr95:
               this.setPauseMenuButtonsEnabled(false);
               if(!(_loc3_ && _loc1_))
               {
                  §=w§.pause();
               }
               if(§!e§ != null)
               {
                  if(_loc2_)
                  {
                     addr112:
                     §!e§.stop();
                  }
                  §§goto(addr187);
               }
               §!e§ = §@7§.§@6§.§'!@§(§@7§.§@6§.§3!%§(§]F§.getItemByName("Container_PauseMenu") as §4!=§,{"x":0},null,0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip,{"alpha":1},{"alpha":0},0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("Container_FullGame") as §4!=§).mClip,{
                  "alpha":1,
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":0,
                  "scaleY":0,
                  "alpha":1
               },0.25,§@7§.§=;§));
               §!e§.onComplete = §super§;
            }
            addr187:
            §!e§.play();
            return;
         }
         §§goto(addr112);
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§]F§.getItemByName("Button_Resume") as §7-§).setEnabled(param1);
            if(!_loc3_)
            {
               (§]F§.getItemByName("Button_Replay") as §7-§).setEnabled(param1);
            }
         }
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§]F§.getItemByName("Button_Resume") as §7-§).setComponentVisualState(param1);
            if(_loc2_ || _loc2_)
            {
               (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(param1);
            }
         }
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§!e§ != null)
            {
               if(!_loc1_)
               {
                  §!e§.stop();
                  if(_loc2_)
                  {
                     §!e§ = §@7§.§@6§.§'!@§(§@7§.§@6§.§3!%§(§]F§.getItemByName("Container_PauseMenu") as §4!=§,{"x":OFFSCREEN_X},null,0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip,{"alpha":0},{"alpha":1},0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("Container_FullGame") as §4!=§).mClip,{"alpha":0},{"alpha":1},0.25));
                     addr28:
                     if(_loc2_)
                     {
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr28);
         }
         addr100:
         §!e§.onComplete = §!Q§;
         if(!(_loc1_ && this))
         {
            addr110:
            §!e§.play();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
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
               if(_loc5_)
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
                  §<!7§.§4!"§.§^"§("Pause");
                  if(!_loc5_)
                  {
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(_loc6_ || param2)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setViewSize(param1,param2);
            if(!(_loc3_ && param1))
            {
               addr40:
               if(§!e§)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §!e§.updateState();
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
   }
}
