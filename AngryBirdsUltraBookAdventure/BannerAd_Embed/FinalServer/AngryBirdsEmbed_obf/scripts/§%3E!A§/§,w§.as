package §>!A§
{
   import §+?§.§03§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §6J§.§?S§;
   import §9>§.§"!C§;
   import §;z§.§%"§;
   
   public class §,w§ extends §8i§
   {
      
      public static const §?x§:String = "LevelLoadStateClassic";
      
      private static var §'0§:Number;
      
      private static var §7! §:§"!C§;
      
      private static var §extends§:§%"§;
       
      
      public function §,w§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §^^§() : void
      {
         §5j§.§#8§(§5j§.§&1§());
         §]!$§ = §&!4§;
      }
      
      public static function §-Y§(param1:int) : void
      {
         §>4§ = param1;
         §]!$§ = §&!4§;
      }
      
      public static function §9!D§() : void
      {
         if(§[k§.§&@§.camera)
         {
            §'0§ = §[k§.§&@§.camera.§-!D§;
         }
         §]!$§ = §&!4§;
      }
      
      override public function deActivate() : void
      {
         if(§7! §)
         {
            §7! §.§`5§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§?S§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§&!;§ = §5j§.§%!I§(§5j§.§%V§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§'0§))
            {
               §[k§.§&@§.camera.§%!3§(§'0§);
               §'0§ = NaN;
            }
         }
         else
         {
            _loc2_ = §5j§.§^!>§(§5j§.§%V§);
            if(_loc2_)
            {
               if(!§extends§)
               {
                  §extends§ = new §%"§();
               }
               if(!§7! §)
               {
                  §7! § = new §"!C§();
                  _loc4_ = §+!!§.assetsUrl || "";
                  _loc5_ = §+!!§.buildNumber || "";
                  §7! §.init(§03§.§3!-§(),_loc4_,_loc5_,§extends§);
               }
               §7! §.§^E§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §7! §.§>!3§(<pack url="{_loc3_}"/>);
               §7! §.§7p§(this.§@!&§);
            }
         }
      }
      
      protected function §@!&§() : void
      {
         var _loc1_:§&!;§ = §5j§.§%!I§(§5j§.§%V§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§'0§))
            {
               §[k§.§&@§.camera.§%!3§(§'0§);
               §'0§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §[k§.§&@§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §[k§.§&@§.§+!'§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§?G§();
      }
      
      protected function §?G§() : String
      {
         return StatePlay.§?x§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §5O§.§?x§;
      }
   }
}
