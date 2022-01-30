package §^U§
{
   import §%!K§.§ i§;
   import §,P§.§'_§;
   import §5u§.§-!h§;
   import §<i§.§'!e§;
   import §<i§.§3!l§;
   import §<i§.§`!r§;
   import §^!m§.§6§;
   
   public class §`!;§ extends § get§
   {
      
      public static const §%!Q§:String = "LevelLoadStateClassic";
      
      private static var §4!t§:Number;
      
      private static var §+"#§:§ i§;
      
      private static var §<!O§:§-!h§;
       
      
      public function §`!;§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §;c§() : void
      {
         §`!r§.loadLevel(§`!r§.§8E§());
         §`!w§ = §>!k§;
      }
      
      public static function §^!$§(param1:int) : void
      {
         §"! § = param1;
         §`!w§ = §>!k§;
      }
      
      public static function §%P§() : void
      {
         if(§'_§.§=M§.camera)
         {
            §4!t§ = §'_§.§=M§.camera.§<>§;
         }
         §`!w§ = §>!k§;
      }
      
      override public function deActivate() : void
      {
         if(§+"#§)
         {
            §+"#§.§ E§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§3!l§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§'!e§ = §`!r§.getLevelForId(§`!r§.§0B§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§4!t§))
            {
               §'_§.§=M§.camera.§'!s§(§4!t§);
               §4!t§ = NaN;
            }
         }
         else
         {
            _loc2_ = §`!r§.§6!8§(§`!r§.§0B§);
            if(_loc2_)
            {
               if(!§<!O§)
               {
                  §<!O§ = new §-!h§();
               }
               if(!§+"#§)
               {
                  §+"#§ = new § i§();
                  _loc4_ = §!u§.assetsUrl || "";
                  _loc5_ = §!u§.buildNumber || "";
                  §+"#§.init(§6§.§25§(),_loc4_,_loc5_,§<!O§);
               }
               §+"#§.§+!H§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §+"#§.§98§(<pack url="{_loc3_}"/>);
               §+"#§.§&!@§(this.§?!c§);
            }
         }
      }
      
      protected function §?!c§() : void
      {
         var _loc1_:§'!e§ = §`!r§.getLevelForId(§`!r§.§0B§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§4!t§))
            {
               §'_§.§=M§.camera.§'!s§(§4!t§);
               §4!t§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §'_§.§=M§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §'_§.§=M§.§'§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§%!Q§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §1!i§.§%!Q§;
      }
   }
}
