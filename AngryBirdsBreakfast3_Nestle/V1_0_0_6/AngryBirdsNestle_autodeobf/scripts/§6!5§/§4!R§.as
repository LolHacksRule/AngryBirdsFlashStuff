package §6!5§
{
   import § !T§.§ q§;
   import § !T§.§7@§;
   import § !T§.§=!x§;
   import § ,§.§>u§;
   import §&M§.§^!A§;
   import §0b§.§;!a§;
   import §2W§.§`J§;
   import §?!v§.§ "4§;
   import com.angrybirds.§6!E§;
   
   public class §4!R§ extends §;!X§
   {
      
      public static const §7w§:String = "LevelLoadStateClassic";
      
      private static var §]J§:§;!a§;
      
      private static var §@!a§:§ "4§;
       
      
      public function §4!R§(param1:§ q§, param2:§>u§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §2<§() : void
      {
         §4C§ = §%'§;
      }
      
      override public function deActivate() : void
      {
         if(§]J§)
         {
            §]J§.§2x§();
         }
         super.deActivate();
      }
      
      protected function §<!J§() : § "4§
      {
         return new § "4§(§="4§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§=!x§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§7@§ = §="4§.getLevelForId(§="4§.currentLevel);
         if(_loc1_)
         {
            §2"1§(_loc1_);
         }
         else
         {
            _loc2_ = §="4§.getEpisodeForLevel(§="4§.currentLevel);
            if(_loc2_)
            {
               if(!§@!a§)
               {
                  §@!a§ = this.§<!J§();
               }
               if(!§]J§)
               {
                  §]J§ = new §;!a§();
                  _loc4_ = §5!+§.assetsUrl || "";
                  _loc5_ = §5!+§.buildNumber || "";
                  §]J§.init(§^!A§.§7!A§(),_loc4_,_loc5_,§@!a§);
               }
               §]J§.§&!1§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §]J§.§>?§(<pack url="{_loc3_}"/>);
               §]J§.§72§(this.§>!m§);
            }
         }
      }
      
      protected function §>!m§() : void
      {
         var _loc1_:§7@§ = §="4§.getLevelForId(§="4§.currentLevel);
         if(_loc1_)
         {
            §2"1§(_loc1_);
            return;
         }
         throw new Error("Level " + §="4§.currentLevel + " not found in the package",§`J§.§9!T§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §6!E§.§7I§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §6!E§.§7I§.§34§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §?n§(this.§+!j§());
      }
      
      protected function §+!j§() : String
      {
         return StatePlay.§7w§;
      }
      
      override public function onLevelLoadError() : void
      {
         §?n§(§^!+§.§7w§);
      }
      
      public function §#!$§(param1:int) : void
      {
         §9d§ = param1;
         §4C§ = §%'§;
      }
   }
}
