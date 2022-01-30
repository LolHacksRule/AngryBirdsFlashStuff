package §2x§
{
   import §!l§.§<!"§;
   import §07§.§ >§;
   import §0s§.§8!z§;
   import §0s§.§=W§;
   import §0s§.§];§;
   import §5!8§.§1u§;
   import §=!<§.§5!U§;
   
   public class §8D§ extends §@q§
   {
      
      public static const §>H§:String = "LevelLoadStateClassic";
      
      private static var §1!L§:Number;
      
      private static var §'!,§:§<!"§;
      
      private static var § !"§:§ >§;
       
      
      public function §8D§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §@P§() : void
      {
         §8!z§.loadLevel(§8!z§.§6"&§());
         §8f§ = §1!C§;
      }
      
      public static function §-"3§(param1:int) : void
      {
         §[!`§ = param1;
         §8f§ = §1!C§;
      }
      
      public static function §+!u§() : void
      {
         if(§5!U§.§,!E§.camera)
         {
            §1!L§ = §5!U§.§,!E§.camera.§`!5§;
         }
         §8f§ = §1!C§;
      }
      
      override public function deActivate() : void
      {
         if(§'!,§)
         {
            §'!,§.§&!2§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§=W§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§];§ = §8!z§.§5!L§(§8!z§.§>!&§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§1!L§))
            {
               §5!U§.§,!E§.camera.§@'§(§1!L§);
               §1!L§ = NaN;
            }
         }
         else
         {
            _loc2_ = §8!z§.§=!b§(§8!z§.§>!&§);
            if(_loc2_)
            {
               if(!§ !"§)
               {
                  § !"§ = new § >§();
               }
               if(!§'!,§)
               {
                  §'!,§ = new §<!"§();
                  _loc4_ = § "%§.assetsUrl || "";
                  _loc5_ = § "%§.buildNumber || "";
                  §'!,§.init(§1u§.§@t§(),_loc4_,_loc5_,§ !"§);
               }
               §'!,§.§>!A§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §'!,§.§=H§(<pack url="{_loc3_}"/>);
               §'!,§.§6"#§(this.§^s§);
            }
         }
      }
      
      protected function §^s§() : void
      {
         var _loc1_:§];§ = §8!z§.§5!L§(§8!z§.§>!&§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§1!L§))
            {
               §5!U§.§,!E§.camera.§@'§(§1!L§);
               §1!L§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §5!U§.§,!E§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §5!U§.§,!E§.§2!B§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§>H§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §8";§.§>H§;
      }
   }
}
