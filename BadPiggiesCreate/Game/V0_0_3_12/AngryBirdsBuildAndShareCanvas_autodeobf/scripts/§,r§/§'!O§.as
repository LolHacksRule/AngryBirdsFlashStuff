package §,r§
{
   import §0E§.§#O§;
   import §0E§.§-!F§;
   import §0E§.§<a§;
   import §7"1§.§%W§;
   import §>!#§.§2w§;
   import §[8§.§[!`§;
   import §]^§.§0!3§;
   
   public class §'!O§ extends §1q§
   {
      
      public static const §8n§:String = "LevelLoadStateClassic";
      
      private static var §7!L§:Number;
      
      private static var § m§:§0!3§;
      
      private static var §;"4§:§2w§;
       
      
      public function §'!O§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §7!-§() : void
      {
         §-!F§.loadLevel(§-!F§.§?!K§());
         §"z§ = §%#§;
      }
      
      public static function §4"4§(param1:int) : void
      {
         §'!j§ = param1;
         §"z§ = §%#§;
      }
      
      public static function §8U§() : void
      {
         if(§%W§.§5"8§.camera)
         {
            §7!L§ = §%W§.§5"8§.camera.§?h§;
         }
         §"z§ = §%#§;
      }
      
      override public function deActivate() : void
      {
         if(§ m§)
         {
            § m§.§,!]§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§<a§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#O§ = §-!F§.§,!_§(§-!F§.§"!L§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§7!L§))
            {
               §%W§.§5"8§.camera.§1!x§(§7!L§);
               §7!L§ = NaN;
            }
         }
         else
         {
            _loc2_ = §-!F§.§#!q§(§-!F§.§"!L§);
            if(_loc2_)
            {
               if(!§;"4§)
               {
                  §;"4§ = new §2w§();
               }
               if(!§ m§)
               {
                  § m§ = new §0!3§();
                  _loc4_ = §""<§.assetsUrl || "";
                  _loc5_ = §""<§.buildNumber || "";
                  § m§.init(§[!`§.§>2§(),_loc4_,_loc5_,§;"4§);
               }
               § m§.§4" §();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               § m§.§?!z§(<pack url="{_loc3_}"/>);
               § m§.§0!k§(this.§7!P§);
            }
         }
      }
      
      protected function §7!P§() : void
      {
         var _loc1_:§#O§ = §-!F§.§,!_§(§-!F§.§"!L§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§7!L§))
            {
               §%W§.§5"8§.camera.§1!x§(§7!L§);
               §7!L§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §%W§.§5"8§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §%W§.§5"8§.§%![§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§8n§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §+!F§.§8n§;
      }
   }
}
