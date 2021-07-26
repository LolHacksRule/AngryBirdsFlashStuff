package § true§
{
   import §%! §.§>!<§;
   import §'9§.§3!§;
   import §3!$§.§^[§;
   import §>!O§.§[+§;
   import §?j§.§!E§;
   import §?j§.§9?§;
   import §?j§.§`R§;
   
   public class §case § extends §%P§
   {
      
      public static const §`W§:String = "LevelLoadStateClassic";
      
      private static var §&c§:Number;
      
      private static var §>P§:§3!§;
      
      private static var §-s§:§>!<§;
       
      
      public function §case §(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §-!5§() : void
      {
         §`R§.§true §(§`R§.§ 1§());
         §;!?§ = §,§;
      }
      
      public static function §`h§(param1:int) : void
      {
         § +§ = param1;
         §;!?§ = §,§;
      }
      
      public static function §"n§() : void
      {
         if(§[+§.§,!&§.camera)
         {
            §&c§ = §[+§.§,!&§.camera.§3,§;
         }
         §;!?§ = §,§;
      }
      
      override public function deActivate() : void
      {
         if(§>P§)
         {
            §>P§.§,E§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§!E§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§9?§ = §`R§.§7!E§(§`R§.§7S§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§&c§))
            {
               §[+§.§,!&§.camera.§;`§(§&c§);
               §&c§ = NaN;
            }
         }
         else
         {
            _loc2_ = §`R§.§!?§(§`R§.§7S§);
            if(_loc2_)
            {
               if(!§-s§)
               {
                  §-s§ = new §>!<§();
               }
               if(!§>P§)
               {
                  §>P§ = new §3!§();
                  _loc4_ = §0u§.assetsUrl || "";
                  _loc5_ = §0u§.buildNumber || "";
                  §>P§.init(§^[§.§0§(),_loc4_,_loc5_,§-s§);
               }
               §>P§.§%T§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §>P§.§1b§(<pack url="{_loc3_}"/>);
               §>P§.§^!K§(this.§4]§);
            }
         }
      }
      
      protected function §4]§() : void
      {
         var _loc1_:§9?§ = §`R§.§7!E§(§`R§.§7S§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§&c§))
            {
               §[+§.§,!&§.camera.§;`§(§&c§);
               §&c§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §[+§.§,!&§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §[+§.§,!&§.§!!+§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§-!2§();
      }
      
      protected function §-!2§() : String
      {
         return StatePlay.§`W§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §&!F§.§`W§;
      }
   }
}
