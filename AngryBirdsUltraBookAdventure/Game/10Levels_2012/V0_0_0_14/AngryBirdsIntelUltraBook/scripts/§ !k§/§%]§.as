package § !k§
{
   import §!!§.§>4§;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §"i§.§5V§;
   import §4!C§.§,!l§;
   import §5i§.§4!]§;
   import §8!Z§.§ !D§;
   
   public class §%]§ extends §@!o§
   {
      
      public static const §3F§:String = "LevelLoadStateClassic";
      
      private static var §[!n§:Number;
      
      private static var §%!M§:§5V§;
      
      private static var §3!8§:§ !D§;
       
      
      public function §%]§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §]!b§() : void
      {
         LevelManager.§9!d§(LevelManager.§=L§());
         §5!F§ = § !v§;
      }
      
      public static function §<#§(param1:int) : void
      {
         §,!-§ = param1;
         §5!F§ = § !v§;
      }
      
      public static function §=>§() : void
      {
         if(§4!]§.§8C§.camera)
         {
            §[!n§ = §4!]§.§8C§.camera.§=!m§;
         }
         §5!F§ = § !v§;
      }
      
      override public function deActivate() : void
      {
         if(§%!M§)
         {
            §%!M§.§?!^§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§@+§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§>4§ = LevelManager.§5!c§(LevelManager.§^!F§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§[!n§))
            {
               §4!]§.§8C§.camera.§9!Y§(§[!n§);
               §[!n§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§,m§(LevelManager.§^!F§);
            if(_loc2_)
            {
               if(!§3!8§)
               {
                  §3!8§ = new § !D§();
               }
               if(!§%!M§)
               {
                  §%!M§ = new §5V§();
                  _loc4_ = §[!Z§.assetsUrl || "";
                  _loc5_ = §[!Z§.buildNumber || "";
                  §%!M§.init(§,!l§.§"!D§(),_loc4_,_loc5_,§3!8§);
               }
               §%!M§.§?r§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §%!M§.§@e§(<pack url="{_loc3_}"/>);
               §%!M§.§-u§(this.§ !K§);
            }
         }
      }
      
      protected function § !K§() : void
      {
         var _loc1_:§>4§ = LevelManager.§5!c§(LevelManager.§^!F§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§[!n§))
            {
               §4!]§.§8C§.camera.§9!Y§(§[!n§);
               §[!n§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §4!]§.§8C§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §4!]§.§8C§.§-!!§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§^Q§();
      }
      
      protected function §^Q§() : String
      {
         return StatePlay.§3F§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §6!U§.§3F§;
      }
   }
}
