package §;m§
{
   import §+!%§.§1!E§;
   import §+!?§.§"h§;
   import §+!@§.§!T§;
   import §5m§.§2!&§;
   import §=!B§.§59§;
   import §=!B§.§=e§;
   import §=!B§.§^!9§;
   
   public class §3'§ extends §4#§
   {
      
      public static const §-!A§:String = "LevelLoadStateClassic";
      
      private static var §2I§:Number;
      
      private static var §>!6§:§!T§;
      
      private static var §=s§:§1!E§;
       
      
      public function §3'§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §+^§() : void
      {
         §59§.§6!9§(§59§.§+-§());
         §4P§ = §8Q§;
      }
      
      public static function §&§(param1:int) : void
      {
         §5_§ = param1;
         §4P§ = §8Q§;
      }
      
      public static function §;3§() : void
      {
         if(§"h§.§1C§.camera)
         {
            §2I§ = §"h§.§1C§.camera.§"Q§;
         }
         §4P§ = §8Q§;
      }
      
      override public function deActivate() : void
      {
         if(§>!6§)
         {
            §>!6§.§,w§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§=e§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§^!9§ = §59§.§'Y§(§59§.§%j§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§2I§))
            {
               §"h§.§1C§.camera.§25§(§2I§);
               §2I§ = NaN;
            }
         }
         else
         {
            _loc2_ = §59§.§+,§(§59§.§%j§);
            if(_loc2_)
            {
               if(!§=s§)
               {
                  §=s§ = new §1!E§();
               }
               if(!§>!6§)
               {
                  §>!6§ = new §!T§();
                  _loc4_ = §,n§.assetsUrl || "";
                  _loc5_ = §,n§.buildNumber || "";
                  §>!6§.init(§2!&§.§5O§(),_loc4_,_loc5_,§=s§);
               }
               §>!6§.§8!%§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §>!6§.§0+§(<pack url="{_loc3_}"/>);
               §>!6§.§>c§(this.§@c§);
            }
         }
      }
      
      protected function §@c§() : void
      {
         var _loc1_:§^!9§ = §59§.§'Y§(§59§.§%j§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§2I§))
            {
               §"h§.§1C§.camera.§25§(§2I§);
               §2I§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §"h§.§1C§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §"h§.§1C§.§each §;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§&!$§();
      }
      
      protected function §&!$§() : String
      {
         return StatePlay.§-!A§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §>!B§.§-!A§;
      }
   }
}
