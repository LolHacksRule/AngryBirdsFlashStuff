package §88§
{
   import §#]§.§'5§;
   import §&@§.§;d§;
   import §<!M§.§#W§;
   import §<!M§.§1!&§;
   import §<!M§.§[i§;
   import §<L§.§]!"§;
   import §=2§.§6z§;
   
   public class §`!J§ extends §use §
   {
      
      public static const §&! §:String = "LevelLoadStateClassic";
      
      private static var §6!§:Number;
      
      private static var §<$§:§;d§;
      
      private static var §&O§:§]!"§;
       
      
      public function §`!J§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §[[§() : void
      {
         §[i§.§#!#§(§[i§.§ §());
         §;B§ = §#0§;
      }
      
      public static function §'!&§(param1:int) : void
      {
         §1A§ = param1;
         §;B§ = §#0§;
      }
      
      public static function §@J§() : void
      {
         if(§'5§.§^;§.camera)
         {
            §6!§ = §'5§.§^;§.camera.§]!G§;
         }
         §;B§ = §#0§;
      }
      
      override public function deActivate() : void
      {
         if(§<$§)
         {
            §<$§.§=O§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§#W§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§1!&§ = §[i§.§2!'§(§[i§.§0A§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§6!§))
            {
               §'5§.§^;§.camera.§use§(§6!§);
               §6!§ = NaN;
            }
         }
         else
         {
            _loc2_ = §[i§.§#D§(§[i§.§0A§);
            if(_loc2_)
            {
               if(!§&O§)
               {
                  §&O§ = new §]!"§();
               }
               if(!§<$§)
               {
                  §<$§ = new §;d§();
                  _loc4_ = §false§.assetsUrl || "";
                  _loc5_ = §false§.buildNumber || "";
                  §<$§.init(§6z§.§<F§(),_loc4_,_loc5_,§&O§);
               }
               §<$§.§ 5§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §<$§.§"!M§(<pack url="{_loc3_}"/>);
               §<$§.§;!"§(this.§8!2§);
            }
         }
      }
      
      protected function §8!2§() : void
      {
         var _loc1_:§1!&§ = §[i§.§2!'§(§[i§.§0A§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§6!§))
            {
               §'5§.§^;§.camera.§use§(§6!§);
               §6!§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §'5§.§^;§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §'5§.§^;§.§<2§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§9&§();
      }
      
      protected function §9&§() : String
      {
         return StatePlay.§&! §;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §!G§.§&! §;
      }
   }
}
