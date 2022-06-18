package §!$§
{
   import §#=§.§<!C§;
   import §-!C§.§#!G§;
   import §-!C§.§3!H§;
   import §-!C§.§=W§;
   import §3!2§.§[;§;
   import §5V§.§=5§;
   import §>%§.§]3§;
   
   public class § W§ extends §8B§
   {
      
      public static const §9"§:String = "LevelLoadStateClassic";
      
      private static var §^B§:Number;
      
      private static var §7c§:§[;§;
      
      private static var §!F§:§=5§;
       
      
      public function § W§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §<m§() : void
      {
         §#!G§.§=I§(§#!G§.§5N§());
         §3!F§ = §@!1§;
      }
      
      public static function §"Y§(param1:int) : void
      {
         §var§ = param1;
         §3!F§ = §@!1§;
      }
      
      public static function § =§() : void
      {
         if(§]3§.§;v§.camera)
         {
            §^B§ = §]3§.§;v§.camera.§9m§;
         }
         §3!F§ = §@!1§;
      }
      
      override public function deActivate() : void
      {
         if(§7c§)
         {
            §7c§.§-]§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§=W§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§3!H§ = §#!G§.§2!0§(§#!G§.§9C§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§^B§))
            {
               §]3§.§;v§.camera.§]N§(§^B§);
               §^B§ = NaN;
            }
         }
         else
         {
            _loc2_ = §#!G§.§6P§(§#!G§.§9C§);
            if(_loc2_)
            {
               if(!§!F§)
               {
                  §!F§ = new §=5§();
               }
               if(!§7c§)
               {
                  §7c§ = new §[;§();
                  _loc4_ = §;!C§.assetsUrl || "";
                  _loc5_ = §;!C§.buildNumber || "";
                  §7c§.init(§<!C§.§8!=§(),_loc4_,_loc5_,§!F§);
               }
               §7c§.§=T§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §7c§.§2a§(<pack url="{_loc3_}"/>);
               §7c§.§"!E§(this.§5X§);
            }
         }
      }
      
      protected function §5X§() : void
      {
         var _loc1_:§3!H§ = §#!G§.§2!0§(§#!G§.§9C§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§^B§))
            {
               §]3§.§;v§.camera.§]N§(§^B§);
               §^B§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §]3§.§;v§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §]3§.§;v§.§1! §;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§3n§();
      }
      
      protected function §3n§() : String
      {
         return StatePlay.§9"§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §#u§.§9"§;
      }
   }
}
