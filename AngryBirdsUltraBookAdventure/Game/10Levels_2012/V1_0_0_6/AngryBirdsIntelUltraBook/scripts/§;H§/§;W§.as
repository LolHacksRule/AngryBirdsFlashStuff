package §;H§
{
   import §+K§.§7$§;
   import §3!G§.§ y§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §7X§.§^"§;
   import §>! §.§^!c§;
   import §[!]§.§ !#§;
   
   public class §;W§ extends §3!u§
   {
      
      public static const §"!s§:String = "LevelLoadStateClassic";
      
      private static var § else§:Number;
      
      private static var §[!S§:§ !#§;
      
      private static var §+!v§:§7$§;
       
      
      public function §;W§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §&p§() : void
      {
         LevelManager.§@3§(LevelManager.§7!X§());
         §"!?§ = §5!@§;
      }
      
      public static function §7l§(param1:int) : void
      {
         §^!%§ = param1;
         §"!?§ = §5!@§;
      }
      
      public static function §&!5§() : void
      {
         if(§^!c§.§5!Y§.camera)
         {
            § else§ = §^!c§.§5!Y§.camera.§05§;
         }
         §"!?§ = §5!@§;
      }
      
      override public function deActivate() : void
      {
         if(§[!S§)
         {
            §[!S§.§=p§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§<!#§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§ y§ = LevelManager.§7z§(LevelManager.§%n§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§ else§))
            {
               §^!c§.§5!Y§.camera.§0[§(§ else§);
               § else§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§1H§(LevelManager.§%n§);
            if(_loc2_)
            {
               if(!§+!v§)
               {
                  §+!v§ = new §7$§();
               }
               if(!§[!S§)
               {
                  §[!S§ = new § !#§();
                  _loc4_ = §4!k§.assetsUrl || "";
                  _loc5_ = §4!k§.buildNumber || "";
                  §[!S§.init(§^"§.§07§(),_loc4_,_loc5_,§+!v§);
               }
               §[!S§.§'!P§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §[!S§.§]!4§(<pack url="{_loc3_}"/>);
               §[!S§.§=g§(this.§`!f§);
            }
         }
      }
      
      protected function §`!f§() : void
      {
         var _loc1_:§ y§ = LevelManager.§7z§(LevelManager.§%n§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§ else§))
            {
               §^!c§.§5!Y§.camera.§0[§(§ else§);
               § else§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §^!c§.§5!Y§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §^!c§.§5!Y§.§>Y§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§2!Y§();
      }
      
      protected function §2!Y§() : String
      {
         return StatePlay.§"!s§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §!y§.§"!s§;
      }
   }
}
