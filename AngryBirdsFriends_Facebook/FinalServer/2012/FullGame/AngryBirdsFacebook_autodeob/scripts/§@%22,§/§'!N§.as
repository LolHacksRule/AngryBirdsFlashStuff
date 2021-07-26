package §@",§
{
   import §5!G§.§&2§;
   import §9!I§.§6!J§;
   import §[!-§.§4-§;
   import §^!U§.§9S§;
   import §`!n§.§#!s§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   
   public class §'!N§ extends §^!D§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §=O§:Number;
      
      private static var §^!`§:§6!J§;
      
      private static var §2i§:§9S§;
       
      
      public function §'!N§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §7!Z§() : void
      {
         LevelManager.§^p§(LevelManager.§&4§());
         §=">§ = §1!M§;
      }
      
      public static function §7!j§(param1:int) : void
      {
         §3Z§ = param1;
         §=">§ = §1!M§;
      }
      
      public static function §^R§() : void
      {
         if(§&2§.§],§.camera)
         {
            §=O§ = §&2§.§],§.camera.§[!^§;
         }
         §=">§ = §1!M§;
      }
      
      override public function deActivate() : void
      {
         if(§^!`§)
         {
            §^!`§.§8,§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§=!-§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#!s§ = LevelManager.§>! §(LevelManager.§`-§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§=O§))
            {
               §&2§.§],§.camera.§!"<§(§=O§);
               §=O§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§0"§(LevelManager.§`-§);
            if(_loc2_)
            {
               if(!§2i§)
               {
                  §2i§ = new §9S§();
               }
               if(!§^!`§)
               {
                  §^!`§ = new §6!J§();
                  _loc4_ = §]A§.assetsUrl || "";
                  _loc5_ = §]A§.buildNumber || "";
                  §^!`§.init(§4-§.§ 5§(),_loc4_,_loc5_,§2i§);
               }
               §^!`§.§@!%§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §^!`§.§1!u§(<pack url="{_loc3_}"/>);
               §^!`§.§;!'§(this.§3^§);
            }
         }
      }
      
      protected function §3^§() : void
      {
         var _loc1_:§#!s§ = LevelManager.§>! §(LevelManager.§`-§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§=O§))
            {
               §&2§.§],§.camera.§!"<§(§=O§);
               §=O§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §&2§.§],§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §&2§.§],§.§#!g§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §[2§.STATE_NAME;
      }
   }
}
