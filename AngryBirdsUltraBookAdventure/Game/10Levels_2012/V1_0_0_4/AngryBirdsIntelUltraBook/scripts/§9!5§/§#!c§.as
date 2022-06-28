package §9!5§
{
   import §%e§.§[P§;
   import §0!N§.§4n§;
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §;!5§.§5>§;
   import §^;§.§6!S§;
   import §true§.§ _§;
   
   public class §#!c§ extends §[!k§
   {
      
      public static const §?h§:String = "LevelLoadStateClassic";
      
      private static var §[v§:Number;
      
      private static var §6!J§:§6!S§;
      
      private static var §&!,§:§[P§;
       
      
      public function §#!c§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function § !0§() : void
      {
         LevelManager.§1!+§(LevelManager.§9!j§());
         §&!B§ = §9u§;
      }
      
      public static function §1!'§(param1:int) : void
      {
         §5!"§ = param1;
         §&!B§ = §9u§;
      }
      
      public static function §6d§() : void
      {
         if(§ _§.§!6§.camera)
         {
            §[v§ = § _§.§!6§.camera.§=!I§;
         }
         §&!B§ = §9u§;
      }
      
      override public function deActivate() : void
      {
         if(§6!J§)
         {
            §6!J§.§4!B§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§4n§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§=+§ = LevelManager.§-V§(LevelManager.§4Y§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§[v§))
            {
               § _§.§!6§.camera.§7!<§(§[v§);
               §[v§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§2!9§(LevelManager.§4Y§);
            if(_loc2_)
            {
               if(!§&!,§)
               {
                  §&!,§ = new §[P§();
               }
               if(!§6!J§)
               {
                  §6!J§ = new §6!S§();
                  _loc4_ = §'!;§.assetsUrl || "";
                  _loc5_ = §'!;§.buildNumber || "";
                  §6!J§.init(§5>§.§?T§(),_loc4_,_loc5_,§&!,§);
               }
               §6!J§.§%G§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §6!J§.§]!$§(<pack url="{_loc3_}"/>);
               §6!J§.§7![§(this.§?;§);
            }
         }
      }
      
      protected function §?;§() : void
      {
         var _loc1_:§=+§ = LevelManager.§-V§(LevelManager.§4Y§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§[v§))
            {
               § _§.§!6§.camera.§7!<§(§[v§);
               §[v§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return § _§.§!6§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return § _§.§!6§.§%!Z§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§,w§();
      }
      
      protected function §,w§() : String
      {
         return StatePlay.§?h§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = § B§.§?h§;
      }
   }
}
