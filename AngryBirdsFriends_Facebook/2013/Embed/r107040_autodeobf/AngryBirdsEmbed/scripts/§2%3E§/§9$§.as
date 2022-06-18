package §2>§
{
   import §-!3§.§!S§;
   import §0b§.§,!D§;
   import §6Z§.§ in§;
   import §6Z§.§"!;§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §=Y§.§-=§;
   
   public class §9$§ extends §"!H§
   {
      
      public static const §]! §:String = "LevelLoadStateClassic";
      
      private static var §9!M§:Number;
      
      private static var §9!8§:§!S§;
      
      private static var §;N§:§,!D§;
       
      
      public function §9$§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §`a§() : void
      {
         §'?§.§4y§(§'?§.§[§());
         §8v§ = §;!J§;
      }
      
      public static function §,!-§(param1:int) : void
      {
         §@O§ = param1;
         §8v§ = §;!J§;
      }
      
      public static function §9g§() : void
      {
         if(§[!4§.§continue§.camera)
         {
            §9!M§ = §[!4§.§continue§.camera.§@7§;
         }
         §8v§ = §;!J§;
      }
      
      override public function deActivate() : void
      {
         if(§9!8§)
         {
            §9!8§.§?#§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§ in§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§"!;§ = §'?§.§>5§(§'?§.§"t§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§9!M§))
            {
               §[!4§.§continue§.camera.§7z§(§9!M§);
               §9!M§ = NaN;
            }
         }
         else
         {
            _loc2_ = §'?§.§+h§(§'?§.§"t§);
            if(_loc2_)
            {
               if(!§;N§)
               {
                  §;N§ = new §,!D§();
               }
               if(!§9!8§)
               {
                  §9!8§ = new §!S§();
                  _loc4_ = § K§.assetsUrl || "";
                  _loc5_ = § K§.buildNumber || "";
                  §9!8§.init(§-=§.§-!J§(),_loc4_,_loc5_,§;N§);
               }
               §9!8§.§1!N§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §9!8§.§5!1§(<pack url="{_loc3_}"/>);
               §9!8§.§'+§(this.§>h§);
            }
         }
      }
      
      protected function §>h§() : void
      {
         var _loc1_:§"!;§ = §'?§.§>5§(§'?§.§"t§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§9!M§))
            {
               §[!4§.§continue§.camera.§7z§(§9!M§);
               §9!M§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §[!4§.§continue§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §[!4§.§continue§.§17§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§6!§();
      }
      
      protected function §6!§() : String
      {
         return StatePlay.§]! §;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §0!O§.§]! §;
      }
   }
}
