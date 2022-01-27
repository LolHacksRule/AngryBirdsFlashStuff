package §=!0§
{
   import §&-§.§<h§;
   import §'8§.§5!H§;
   import §-!D§.§>d§;
   import §6!L§.§#!M§;
   import §6!L§.§&u§;
   import §6!L§.§7n§;
   import §=z§.§0!E§;
   
   public class §1!F§ extends §8!8§
   {
      
      public static const §@§:String = "LevelLoadStateClassic";
      
      private static var §=a§:Number;
      
      private static var §1H§:§<h§;
      
      private static var §5!;§:§>d§;
       
      
      public function §1!F§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §!<§() : void
      {
         §&u§.§8v§(§&u§.§7E§());
         §#3§ = §]!7§;
      }
      
      public static function §]!1§(param1:int) : void
      {
         §!!N§ = param1;
         §#3§ = §]!7§;
      }
      
      public static function §4W§() : void
      {
         if(§0!E§.§9!B§.camera)
         {
            §=a§ = §0!E§.§9!B§.camera.§=q§;
         }
         §#3§ = §]!7§;
      }
      
      override public function deActivate() : void
      {
         if(§1H§)
         {
            §1H§.§&M§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§7n§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#!M§ = §&u§.§`!0§(§&u§.§ !+§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§=a§))
            {
               §0!E§.§9!B§.camera.§%]§(§=a§);
               §=a§ = NaN;
            }
         }
         else
         {
            _loc2_ = §&u§.§8!!§(§&u§.§ !+§);
            if(_loc2_)
            {
               if(!§5!;§)
               {
                  §5!;§ = new §>d§();
               }
               if(!§1H§)
               {
                  §1H§ = new §<h§();
                  _loc4_ = § f§.assetsUrl || "";
                  _loc5_ = § f§.buildNumber || "";
                  §1H§.init(§5!H§.§"! §(),_loc4_,_loc5_,§5!;§);
               }
               §1H§.§&!P§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §1H§.§6%§(<pack url="{_loc3_}"/>);
               §1H§.§1!§(this.§#!=§);
            }
         }
      }
      
      protected function §#!=§() : void
      {
         var _loc1_:§#!M§ = §&u§.§`!0§(§&u§.§ !+§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§=a§))
            {
               §0!E§.§9!B§.camera.§%]§(§=a§);
               §=a§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §0!E§.§9!B§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §0!E§.§9!B§.§@l§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§;!=§();
      }
      
      protected function §;!=§() : String
      {
         return StatePlay.§@§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §?!G§.§@§;
      }
   }
}
