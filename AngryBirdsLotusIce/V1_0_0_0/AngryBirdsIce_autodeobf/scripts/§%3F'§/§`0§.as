package §?'§
{
   import §#!2§.§0T§;
   import §,!$§.§[! §;
   import §;f§.§&#§;
   import §;f§.§9y§;
   import §;f§.§^o§;
   import §;j§.§8[§;
   import §?[§.§7f§;
   
   public class §`0§ extends §?Z§
   {
      
      public static const §`%§:String = "LevelLoadStateClassic";
      
      private static var §1o§:Number;
      
      private static var §11§:§7f§;
      
      private static var §^!C§:§[! §;
       
      
      public function §`0§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §6p§() : void
      {
         §&#§.§9,§(§&#§.§6!§());
         §;!,§ = §9u§;
      }
      
      public static function §6!%§(param1:int) : void
      {
         §&!0§ = param1;
         §;!,§ = §9u§;
      }
      
      public static function §#T§() : void
      {
         if(§8[§.§import§.camera)
         {
            §1o§ = §8[§.§import§.camera.§6!<§;
         }
         §;!,§ = §9u§;
      }
      
      override public function deActivate() : void
      {
         if(§11§)
         {
            §11§.§`7§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§9y§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§^o§ = §&#§.§@y§(§&#§.§<Y§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§1o§))
            {
               §8[§.§import§.camera.§@!6§(§1o§);
               §1o§ = NaN;
            }
         }
         else
         {
            _loc2_ = §&#§.§+!3§(§&#§.§<Y§);
            if(_loc2_)
            {
               if(!§^!C§)
               {
                  §^!C§ = new §[! §();
               }
               if(!§11§)
               {
                  §11§ = new §7f§();
                  _loc4_ = §#G§.assetsUrl || "";
                  _loc5_ = §#G§.buildNumber || "";
                  §11§.init(§0T§.§@!&§(),_loc4_,_loc5_,§^!C§);
               }
               §11§.§&o§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §11§.§!E§(<pack url="{_loc3_}"/>);
               §11§.§[V§(this.§^I§);
            }
         }
      }
      
      protected function §^I§() : void
      {
         var _loc1_:§^o§ = §&#§.§@y§(§&#§.§<Y§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§1o§))
            {
               §8[§.§import§.camera.§@!6§(§1o§);
               §1o§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §8[§.§import§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §8[§.§import§.§4!!§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§+!§();
      }
      
      protected function §+!§() : String
      {
         return StatePlay.§`%§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §8m§.§`%§;
      }
   }
}
