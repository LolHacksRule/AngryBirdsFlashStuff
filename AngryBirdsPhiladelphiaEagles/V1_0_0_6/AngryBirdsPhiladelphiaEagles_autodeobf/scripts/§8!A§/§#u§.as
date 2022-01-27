package §8!A§
{
   import §&b§.§[F§;
   import §16§.§!y§;
   import §1E§.§2h§;
   import §1E§.§5T§;
   import §1E§.§8P§;
   import §3>§.§8!J§;
   import §<@§.§^m§;
   
   public class §#u§ extends §4<§
   {
      
      public static const §2`§:String = "LevelLoadStateClassic";
      
      private static var §#!"§:Number;
      
      private static var §!!G§:§8!J§;
      
      private static var §'!P§:§!y§;
       
      
      public function §#u§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §<k§() : void
      {
         §2h§.§2!I§(§2h§.§@!8§());
         §,T§ = §!!;§;
      }
      
      public static function §,H§(param1:int) : void
      {
         §1Q§ = param1;
         §,T§ = §!!;§;
      }
      
      public static function §<q§() : void
      {
         if(§[F§.§9u§.camera)
         {
            §#!"§ = §[F§.§9u§.camera.§+i§;
         }
         §,T§ = §!!;§;
      }
      
      override public function deActivate() : void
      {
         if(§!!G§)
         {
            §!!G§.§,!3§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§8P§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§5T§ = §2h§.§?J§(§2h§.§,!P§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§#!"§))
            {
               §[F§.§9u§.camera.§7f§(§#!"§);
               §#!"§ = NaN;
            }
         }
         else
         {
            _loc2_ = §2h§.§,?§(§2h§.§,!P§);
            if(_loc2_)
            {
               if(!§'!P§)
               {
                  §'!P§ = new §!y§();
               }
               if(!§!!G§)
               {
                  §!!G§ = new §8!J§();
                  _loc4_ = §13§.assetsUrl || "";
                  _loc5_ = §13§.buildNumber || "";
                  §!!G§.init(§^m§.§`!$§(),_loc4_,_loc5_,§'!P§);
               }
               §!!G§.§4!5§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §!!G§.§80§(<pack url="{_loc3_}"/>);
               §!!G§.§@@§(this.§31§);
            }
         }
      }
      
      protected function §31§() : void
      {
         var _loc1_:§5T§ = §2h§.§?J§(§2h§.§,!P§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§#!"§))
            {
               §[F§.§9u§.camera.§7f§(§#!"§);
               §#!"§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §[F§.§9u§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §[F§.§9u§.§7!=§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§ !E§();
      }
      
      protected function § !E§() : String
      {
         return StatePlay.§2`§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §6!C§.§2`§;
      }
   }
}
