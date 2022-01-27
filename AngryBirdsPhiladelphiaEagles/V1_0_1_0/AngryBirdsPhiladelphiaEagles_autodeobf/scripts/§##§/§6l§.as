package §##§
{
   import §+T§.§@!?§;
   import §4!D§.§2H§;
   import §5=§.§-+§;
   import §5=§.§8G§;
   import §5=§.§^n§;
   import §@w§.§2G§;
   import §break§.§8!B§;
   
   public class §6l§ extends §<!7§
   {
      
      public static const §=,§:String = "LevelLoadStateClassic";
      
      private static var §`]§:Number;
      
      private static var §]F§:§@!?§;
      
      private static var §%Z§:§2H§;
       
      
      public function §6l§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §'! §() : void
      {
         §^n§.§4S§(§^n§.§<_§());
         §>!#§ = §extends§;
      }
      
      public static function §+$§(param1:int) : void
      {
         §7!B§ = param1;
         §>!#§ = §extends§;
      }
      
      public static function §"w§() : void
      {
         if(§2G§.§7!,§.camera)
         {
            §`]§ = §2G§.§7!,§.camera.§#!0§;
         }
         §>!#§ = §extends§;
      }
      
      override public function deActivate() : void
      {
         if(§]F§)
         {
            §]F§.§7!G§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§-+§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§8G§ = §^n§.§5'§(§^n§.§-7§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§`]§))
            {
               §2G§.§7!,§.camera.§2!%§(§`]§);
               §`]§ = NaN;
            }
         }
         else
         {
            _loc2_ = §^n§.§@-§(§^n§.§-7§);
            if(_loc2_)
            {
               if(!§%Z§)
               {
                  §%Z§ = new §2H§();
               }
               if(!§]F§)
               {
                  §]F§ = new §@!?§();
                  _loc4_ = §>!9§.assetsUrl || "";
                  _loc5_ = §>!9§.buildNumber || "";
                  §]F§.init(§8!B§.§1Z§(),_loc4_,_loc5_,§%Z§);
               }
               §]F§.§6!5§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §]F§.§>3§(<pack url="{_loc3_}"/>);
               §]F§.§>`§(this.§;b§);
            }
         }
      }
      
      protected function §;b§() : void
      {
         var _loc1_:§8G§ = §^n§.§5'§(§^n§.§-7§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§`]§))
            {
               §2G§.§7!,§.camera.§2!%§(§`]§);
               §`]§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §2G§.§7!,§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §2G§.§7!,§.§%I§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§>L§();
      }
      
      protected function §>L§() : String
      {
         return StatePlay.§=,§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §5!E§.§=,§;
      }
   }
}
