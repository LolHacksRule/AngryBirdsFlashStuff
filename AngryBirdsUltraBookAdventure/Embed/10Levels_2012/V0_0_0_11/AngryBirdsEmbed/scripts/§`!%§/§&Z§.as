package §`!%§
{
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§ p§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §>!C§.§3k§;
   import §>!C§.§6M§;
   import §@s§.§'!0§;
   import flash.text.TextFieldAutoSize;
   
   public class §&Z§ extends §77§
   {
       
      
      public function §&Z§(param1:Boolean = false, param2:String = "PauseState")
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
            § !G§ = true;
            if(!(_loc3_ && this))
            {
               §#!4§ = new §!!1§(this);
               if(_loc3_)
               {
               }
               §§goto(addr68);
            }
            §#!4§.init(§0!&§.§'^§.Views.View_FacebookLevelPause[0]);
         }
         addr68:
         var _loc1_:§ p§ = §#!4§.getItemByName("TextField_ChapterName") as § p§;
         if(_loc2_ || this)
         {
            _loc1_.§!"§.autoSize = TextFieldAutoSize.CENTER;
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
               (§#!4§.getItemByName("MovieClip_DarkBG") as §[!B§).mClip.alpha = 0;
               if(!(_loc2_ && _loc1_))
               {
                  (§#!4§.getItemByName("Container_FullGame") as §`f§).mClip.alpha = 0;
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
         var _loc1_:§ p§ = null;
         if(§6M§.§[z§ != null)
         {
            if(_loc2_)
            {
               _loc1_ = §#!4§.getItemByName("TextField_ChapterName") as § p§;
               if(_loc2_)
               {
                  _loc1_.§!"§.text = §6M§.§0!1§().writtenName;
                  if(_loc2_)
                  {
                     (§#!4§.getItemByName("TextField_LevelName") as § p§).§!"§.text = §3k§.§4'§(§6M§.§[z§);
                     addr53:
                     (§#!4§.getItemByName("Container_PauseMenu") as §`f§).x = §77§.OFFSCREEN_X;
                     if(_loc2_ || _loc2_)
                     {
                        this.setPauseMenuButtonsEnabled(false);
                        §,!!§.pause();
                        if(_loc2_ || _loc2_)
                        {
                           if(§6!G§ != null)
                           {
                              addr93:
                              §6!G§.stop();
                              if(_loc3_)
                              {
                              }
                              §§goto(addr177);
                           }
                           §6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_PauseMenu") as §`f§,{"x":0},null,0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("MovieClip_DarkBG") as §[!B§).mClip,{"alpha":1},{"alpha":0},0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("Container_FullGame") as §`f§).mClip,{
                              "alpha":1,
                              "scaleX":1,
                              "scaleY":1
                           },{
                              "scaleX":0,
                              "scaleY":0,
                              "alpha":1
                           },0.25,§%!>§.§>!'§));
                           if(!(_loc3_ && _loc2_))
                           {
                              §6!G§.onComplete = §%M§;
                              §§goto(addr177);
                           }
                           addr177:
                           §6!G§.play();
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
            (§#!4§.getItemByName("Button_Resume") as §]P§).setEnabled(param1);
            if(!(_loc3_ && _loc2_))
            {
               (§#!4§.getItemByName("Button_Replay") as §]P§).setEnabled(param1);
            }
         }
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§#!4§.getItemByName("Button_Resume") as §]P§).setComponentVisualState(param1);
            if(_loc2_)
            {
               addr27:
               (§#!4§.getItemByName("Button_Replay") as §]P§).setComponentVisualState(param1);
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
            if(§6!G§ != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §6!G§.stop();
                  if(!_loc2_)
                  {
                     §6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_PauseMenu") as §`f§,{"x":OFFSCREEN_X},null,0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("MovieClip_DarkBG") as §[!B§).mClip,{"alpha":0},{"alpha":1},0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("Container_FullGame") as §`f§).mClip,{"alpha":0},{"alpha":1},0.25));
                     addr37:
                     if(_loc1_)
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr114);
                  }
               }
               addr109:
               §6!G§.onComplete = §for§;
               if(_loc1_)
               {
                  addr114:
                  §6!G§.play();
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
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
                  §@!?§.§%P§.§7a§("Pause");
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
               if(§6!G§)
               {
                  if(_loc3_)
                  {
                     §6!G§.updateState();
                  }
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
