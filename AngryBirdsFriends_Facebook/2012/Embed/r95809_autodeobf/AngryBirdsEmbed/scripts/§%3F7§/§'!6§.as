package §?7§
{
   import §%Z§.§1y§;
   import §-l§.§?'§;
   import §9S§.§!!§;
   import §<!@§.§!P§;
   import §<!@§.§#c§;
   import §<!@§.§+!-§;
   import §^<§.§`p§;
   
   public class §'!6§ extends §"!5§
   {
      
      public static const §4!&§:String = "LevelLoadStateClassic";
      
      private static var §>!-§:Number;
      
      private static var §0%§:§!!§;
      
      private static var §@y§:§1y§;
       
      
      public function §'!6§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §'X§() : void
      {
         §!P§.§-7§(§!P§.§]y§());
         §86§ = §3!§;
      }
      
      public static function §>!8§(param1:int) : void
      {
         § k§ = param1;
         §86§ = §3!§;
      }
      
      public static function § !F§() : void
      {
         if(§?'§.§5!§.camera)
         {
            §>!-§ = §?'§.§5!§.camera.§;u§;
         }
         §86§ = §3!§;
      }
      
      override public function deActivate() : void
      {
         if(§0%§)
         {
            §0%§.§]!"§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§#c§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§+!-§ = §!P§.§1'§(§!P§.§4R§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§>!-§))
            {
               §?'§.§5!§.camera.§%N§(§>!-§);
               §>!-§ = NaN;
            }
         }
         else
         {
            _loc2_ = §!P§.§5K§(§!P§.§4R§);
            if(_loc2_)
            {
               if(!§@y§)
               {
                  §@y§ = new §1y§();
               }
               if(!§0%§)
               {
                  §0%§ = new §!!§();
                  _loc4_ = §5!"§.assetsUrl || "";
                  _loc5_ = §5!"§.buildNumber || "";
                  §0%§.init(§`p§.§8Y§(),_loc4_,_loc5_,§@y§);
               }
               §0%§.§+H§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §0%§.§`G§(<pack url="{_loc3_}"/>);
               §0%§.§3S§(this.§8a§);
            }
         }
      }
      
      protected function §8a§() : void
      {
         var _loc1_:§+!-§ = §!P§.§1'§(§!P§.§4R§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§>!-§))
            {
               §?'§.§5!§.camera.§%N§(§>!-§);
               §>!-§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §?'§.§5!§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §?'§.§5!§.§%Q§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§"@§();
      }
      
      protected function §"@§() : String
      {
         return StatePlay.§4!&§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §<!D§.§4!&§;
      }
   }
}
