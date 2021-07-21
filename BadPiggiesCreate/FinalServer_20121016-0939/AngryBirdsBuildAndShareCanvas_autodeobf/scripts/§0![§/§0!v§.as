package §0![§
{
   import §"v§.§"! §;
   import §"v§.§3!w§;
   import §"v§.§9"§;
   import §%c§.§=!X§;
   import §4!D§.§3!7§;
   import §="6§.§;!a§;
   import §@!v§.§6!Q§;
   
   public class §0!v§ extends §0",§
   {
      
      public static const §'=§:String = "LevelLoadStateClassic";
      
      private static var §4!F§:Number;
      
      private static var §[t§:§3!7§;
      
      private static var §&!K§:§;!a§;
       
      
      public function §0!v§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §`" §() : void
      {
         §3!w§.loadLevel(§3!w§.§;d§());
         §7""§ = §#!F§;
      }
      
      public static function §'u§(param1:int) : void
      {
         §`!j§ = param1;
         §7""§ = §#!F§;
      }
      
      public static function §4[§() : void
      {
         if(§=!X§.§!'§.camera)
         {
            §4!F§ = §=!X§.§!'§.camera.§0"'§;
         }
         §7""§ = §#!F§;
      }
      
      override public function deActivate() : void
      {
         if(§[t§)
         {
            §[t§.§'e§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§"! § = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§9"§ = §3!w§.§7%§(§3!w§.§%n§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§4!F§))
            {
               §=!X§.§!'§.camera.§="'§(§4!F§);
               §4!F§ = NaN;
            }
         }
         else
         {
            _loc2_ = §3!w§.§>! §(§3!w§.§%n§);
            if(_loc2_)
            {
               if(!§&!K§)
               {
                  §&!K§ = new §;!a§();
               }
               if(!§[t§)
               {
                  §[t§ = new §3!7§();
                  _loc4_ = §;" §.assetsUrl || "";
                  _loc5_ = §;" §.buildNumber || "";
                  §[t§.init(§6!Q§.§]!q§(),_loc4_,_loc5_,§&!K§);
               }
               §[t§.§6"5§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §[t§.§^A§(<pack url="{_loc3_}"/>);
               §[t§.§,!'§(this.§8j§);
            }
         }
      }
      
      protected function §8j§() : void
      {
         var _loc1_:§9"§ = §3!w§.§7%§(§3!w§.§%n§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§4!F§))
            {
               §=!X§.§!'§.camera.§="'§(§4!F§);
               §4!F§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §=!X§.§!'§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §=!X§.§!'§.§9"=§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§'=§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §7B§.§'=§;
      }
   }
}
