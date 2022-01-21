package §+F§
{
   import § !Y§.§2#§;
   import §&!V§.§=O§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   import §7-§.§"_§;
   import §7-§.§-e§;
   import §7-§.§[!$§;
   import §8T§.§[!R§;
   import §>!%§.HighscoreSidebar;
   import §?I§.§`E§;
   import §`!"§.§;i§;
   import §finally§.§8k§;
   
   public class §--§ extends Popup
   {
      
      private static var §8+§:Class = §9,§;
       
      
      private var §?E§:StatePopupManager;
      
      private var §"]§:Boolean = false;
      
      private var §'A§:§=O§;
      
      public function §--§(param1:§"!n§, param2:StatePopupManager, param3:§=O§)
      {
         super(§1[§.§4L§(§8+§),param1);
         §<D§ = param1;
         this.§?E§ = param2;
         this.§'A§ = param3;
         this.§?E§.addEventListener(§[!R§.§11§,this.onUiInteraction);
         §`E§.§@!7§.updateTextFields(§<D§,"ServerError_Popup");
      }
      
      private function onUiInteraction(param1:§[!R§) : void
      {
         this.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
         this.§'A§.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         switch(param2)
         {
            case "BUTTON_CLOSE":
               this.preClose();
               this.§"]§ = true;
         }
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         §[!$§.sHighscoreSidebar.§=W§();
         if(this.§"]§)
         {
            while(§^!Y§.§,!=§)
            {
               §^!Y§.§^!g§();
            }
            _loc1_ = 0;
            while(_loc1_ < § !J§.§4!'§.length)
            {
               if(§ !J§.§4!'§[_loc1_] is Popup)
               {
                  § !J§.§4!'§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§"]§ = false;
            §2#§.§2![§();
            §2#§.§"@§.§0f§(false);
            §2#§.§"@§.§5$§(false);
            §"_§.§@!m§ = §-e§.§<@§;
            §8k§.§;z§(§8k§.§]x§(HighscoreSidebar.§[d§[2]));
            §2!M§.§7!F§.§>R§(§"_§.§<@§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;i§.§<l§);
            §"! §.play();
         }
         super.open(param1);
         §[!$§.sHighscoreSidebar.§=W§();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;i§.§3C§);
            §"! §.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§?E§.removeEventListener(§[!R§.§11§,this.onUiInteraction);
         super.deActivate();
      }
      
      override public function updateTextFields() : void
      {
         §`E§.§@!7§.updateTextFields(§<D§,"ServerError_Popup");
      }
   }
}
