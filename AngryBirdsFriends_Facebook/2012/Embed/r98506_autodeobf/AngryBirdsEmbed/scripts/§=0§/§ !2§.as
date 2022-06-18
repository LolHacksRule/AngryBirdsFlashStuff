package §=0§
{
   import §,!§.§>N§;
   import §,u§.§8A§;
   import §7^§.§4Q§;
   import §8!G§.§-Z§;
   import §8!G§.§1w§;
   import §8!G§.§>!C§;
   import §`t§.§^?§;
   
   public class § !2§ extends §;!?§
   {
      
      public static const §?1§:String = "LevelLoadStateClassic";
      
      private static var §4!6§:Number;
      
      private static var §&0§:§>N§;
      
      private static var §]!-§:§4Q§;
       
      
      public function § !2§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §62§() : void
      {
         §-Z§.§;k§(§-Z§.§'Z§());
         §18§ = §"!D§;
      }
      
      public static function §^F§(param1:int) : void
      {
         §^L§ = param1;
         §18§ = §"!D§;
      }
      
      public static function §-9§() : void
      {
         if(§^?§.§]!%§.camera)
         {
            §4!6§ = §^?§.§]!%§.camera.§7!F§;
         }
         §18§ = §"!D§;
      }
      
      override public function deActivate() : void
      {
         if(§&0§)
         {
            §&0§.§7!?§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§>!C§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§1w§ = §-Z§.§4! §(§-Z§.§%s§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§4!6§))
            {
               §^?§.§]!%§.camera.§!t§(§4!6§);
               §4!6§ = NaN;
            }
         }
         else
         {
            _loc2_ = §-Z§.§ H§(§-Z§.§%s§);
            if(_loc2_)
            {
               if(!§]!-§)
               {
                  §]!-§ = new §4Q§();
               }
               if(!§&0§)
               {
                  §&0§ = new §>N§();
                  _loc4_ = §8!%§.assetsUrl || "";
                  _loc5_ = §8!%§.buildNumber || "";
                  §&0§.init(§8A§.§-8§(),_loc4_,_loc5_,§]!-§);
               }
               §&0§.§6!#§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §&0§.§]g§(<pack url="{_loc3_}"/>);
               §&0§.§@@§(this.§2!!§);
            }
         }
      }
      
      protected function §2!!§() : void
      {
         var _loc1_:§1w§ = §-Z§.§4! §(§-Z§.§%s§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§4!6§))
            {
               §^?§.§]!%§.camera.§!t§(§4!6§);
               §4!6§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §^?§.§]!%§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §^?§.§]!%§.§3!G§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§%i§();
      }
      
      protected function §%i§() : String
      {
         return StatePlay.§?1§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §33§.§?1§;
      }
   }
}
