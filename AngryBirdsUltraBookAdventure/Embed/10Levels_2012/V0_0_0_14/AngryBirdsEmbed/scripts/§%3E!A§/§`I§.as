package §>!A§
{
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §6J§.§+t§;
   import §6J§.§5j§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §`F§.§,B§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.text.TextFieldAutoSize;
   
   public class §`I§ extends §?K§
   {
       
      
      public function §`I§(param1:Boolean = false, param2:String = "PauseState")
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
            §;!$§ = true;
            if(!(_loc3_ && this))
            {
               §[=§ = new §^3§(this);
               if(_loc3_)
               {
               }
               §§goto(addr68);
            }
            §[=§.init(§!I§.§7y§.Views.View_FacebookLevelPause[0]);
         }
         addr68:
         var _loc1_:§3D§ = §[=§.getItemByName("TextField_ChapterName") as §3D§;
         if(_loc2_ || this)
         {
            _loc1_.§7=§.autoSize = TextFieldAutoSize.CENTER;
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
               (§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip.alpha = 0;
               if(!(_loc2_ && _loc1_))
               {
                  (§[=§.getItemByName("Container_FullGame") as §3C§).mClip.alpha = 0;
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
         var _loc1_:§3D§ = null;
         if(§5j§.§%V§ != null)
         {
            if(_loc2_)
            {
               _loc1_ = §[=§.getItemByName("TextField_ChapterName") as §3D§;
               if(_loc2_)
               {
                  _loc1_.§7=§.text = §5j§.§'!#§().writtenName;
                  if(_loc2_)
                  {
                     (§[=§.getItemByName("TextField_LevelName") as §3D§).§7=§.text = §+t§.§;d§(§5j§.§%V§);
                     addr53:
                     (§[=§.getItemByName("Container_PauseMenu") as §3C§).x = §?K§.OFFSCREEN_X;
                     if(_loc2_ || _loc2_)
                     {
                        this.setPauseMenuButtonsEnabled(false);
                        §[k§.pause();
                        if(_loc2_ || _loc2_)
                        {
                           if(§function§ != null)
                           {
                              addr93:
                              §function§.stop();
                              if(_loc3_)
                              {
                              }
                              §§goto(addr177);
                           }
                           §function§ = §,B§.§^n§.§!g§(§,B§.§^n§.§2E§(§[=§.getItemByName("Container_PauseMenu") as §3C§,{"x":0},null,0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip,{"alpha":1},{"alpha":0},0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("Container_FullGame") as §3C§).mClip,{
                              "alpha":1,
                              "scaleX":1,
                              "scaleY":1
                           },{
                              "scaleX":0,
                              "scaleY":0,
                              "alpha":1
                           },0.25,§,B§.§;C§));
                           if(!(_loc3_ && _loc2_))
                           {
                              §function§.onComplete = §%!1§;
                              §§goto(addr177);
                           }
                           addr177:
                           §function§.play();
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
            (§[=§.getItemByName("Button_Resume") as §?q§).setEnabled(param1);
            if(!(_loc3_ && _loc2_))
            {
               (§[=§.getItemByName("Button_Replay") as §?q§).setEnabled(param1);
            }
         }
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§[=§.getItemByName("Button_Resume") as §?q§).setComponentVisualState(param1);
            if(_loc2_)
            {
               addr27:
               (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(param1);
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
            if(§function§ != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §function§.stop();
                  if(!_loc2_)
                  {
                     §function§ = §,B§.§^n§.§!g§(§,B§.§^n§.§2E§(§[=§.getItemByName("Container_PauseMenu") as §3C§,{"x":OFFSCREEN_X},null,0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip,{"alpha":0},{"alpha":1},0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("Container_FullGame") as §3C§).mClip,{"alpha":0},{"alpha":1},0.25));
                     addr37:
                     if(_loc1_)
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr114);
                  }
               }
               addr109:
               §function§.onComplete = §?!?§;
               if(_loc1_)
               {
                  addr114:
                  §function§.play();
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
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
                  §#W§.§[G§.§=K§("Pause");
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
               if(§function§)
               {
                  if(_loc3_)
                  {
                     §function§.updateState();
                  }
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
