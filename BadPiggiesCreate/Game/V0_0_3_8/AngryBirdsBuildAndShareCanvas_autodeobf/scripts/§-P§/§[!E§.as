package §-P§
{
   import §%!k§.§=M§;
   import §'!O§.§=!w§;
   import §'!O§.§@!l§;
   import §'!O§.§[!m§;
   import §3&§.§7G§;
   import §;!+§.§?p§;
   import §`%§.§8!0§;
   
   public class §[!E§ extends §;!@§
   {
      
      public static const §#!w§:String = "LevelLoadStateClassic";
      
      private static var §^F§:Number;
      
      private static var §?!T§:§7G§;
      
      private static var §!!;§:§?p§;
       
      
      public function §[!E§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function § !E§() : void
      {
         §[!m§.loadLevel(§[!m§.§7>§());
         §@x§ = §0=§;
      }
      
      public static function §<"&§(param1:int) : void
      {
         §!N§ = param1;
         §@x§ = §0=§;
      }
      
      public static function §%!,§() : void
      {
         if(§8!0§.§?2§.camera)
         {
            §^F§ = §8!0§.§?2§.camera.§1!B§;
         }
         §@x§ = §0=§;
      }
      
      override public function deActivate() : void
      {
         if(§?!T§)
         {
            §?!T§.§^!4§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§=!w§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§@!l§ = §[!m§.§&l§(§[!m§.§<!D§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§^F§))
            {
               §8!0§.§?2§.camera.§,4§(§^F§);
               §^F§ = NaN;
            }
         }
         else
         {
            _loc2_ = §[!m§.§?!S§(§[!m§.§<!D§);
            if(_loc2_)
            {
               if(!§!!;§)
               {
                  §!!;§ = new §?p§();
               }
               if(!§?!T§)
               {
                  §?!T§ = new §7G§();
                  _loc4_ = §9C§.assetsUrl || "";
                  _loc5_ = §9C§.buildNumber || "";
                  §?!T§.init(§=M§.§2w§(),_loc4_,_loc5_,§!!;§);
               }
               §?!T§.§1R§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §?!T§.§]o§(<pack url="{_loc3_}"/>);
               §?!T§.§-"5§(this.§6!h§);
            }
         }
      }
      
      protected function §6!h§() : void
      {
         var _loc1_:§@!l§ = §[!m§.§&l§(§[!m§.§<!D§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§^F§))
            {
               §8!0§.§?2§.camera.§,4§(§^F§);
               §^F§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §8!0§.§?2§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §8!0§.§?2§.§<W§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§#!w§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §1f§.§#!w§;
      }
   }
}
