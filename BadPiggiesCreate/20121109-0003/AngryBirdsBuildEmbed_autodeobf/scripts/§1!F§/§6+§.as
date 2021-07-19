package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §+]§.§"U§;
   import §+]§.§7&§;
   import §-!0§.§2! §;
   import §1?§.§+!§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!i§.§@!n§;
   import §@!i§.StateLevelEditor;
   import §@!i§.StateLevelPreview;
   import flash.system.System;
   
   public class §6+§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "InitState";
       
      
      private var §7L§:Boolean = false;
      
      private var §?!_§:Boolean = true;
      
      public function §6+§(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         §-!D§.§<!C§("loadLevel",this.§3[§);
         §-!D§.§<!C§("loadFromMemory",this.§[!Q§);
         §-!D§.§<!C§("suspend",this.suspend);
      }
      
      private function §3!N§(param1:String) : void
      {
         System.setClipboard(param1);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_Initialize[0]);
         §7&§.init();
      }
      
      private function suspend() : void
      {
         §35§.§`!d§.§?8§().mNextState = STATE_NAME;
         §+!§.§'!Q§();
         §'!V§.pause();
      }
      
      override public function activate() : void
      {
         super.activate();
         §7&§.§=n§().§^s§("{\"saveButton\":true}");
         if(this.§?!_§)
         {
            §-!D§.§?5§("onFlashInitialize");
            this.§?!_§ = false;
            this.§3[§("","edit");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function getTargetFrameRate() : int
      {
         return 1;
      }
      
      private function §[!Q§() : void
      {
         var _loc1_:§2! § = §"U§.§4!;§();
         §@!n§.loadLevel(!!_loc1_ ? _loc1_ : new §2! §(),StateLevelEditor.STATE_NAME);
         §35§.§`!d§.§?8§().mNextState = §@!n§.STATE_NAME;
      }
      
      public function §3[§(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         if(param1 == null || param1.length == 0)
         {
            §@!n§.loadLevel(new §2! §(),StateLevelEditor.STATE_NAME);
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.STATE_NAME,
               "play":StatePlayBS.STATE_NAME,
               "preview":StateLevelPreview.STATE_NAME
            };
            §@!n§.loadLevel(§2! §.§%!G§(param1),_loc3_[param2]);
         }
         §35§.§`!d§.§?8§().mNextState = §@!n§.STATE_NAME;
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
   }
}
