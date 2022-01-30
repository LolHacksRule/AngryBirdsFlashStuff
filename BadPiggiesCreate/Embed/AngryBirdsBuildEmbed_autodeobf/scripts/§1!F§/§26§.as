package §1!F§
{
   import §&!0§.§%!`§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §-!0§.§4!N§;
   import §1j§.§1R§;
   import §7v§.§%!M§;
   import §?!-§.§'!V§;
   
   public class §26§ extends §4!&§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §9t§:Number;
      
      private static var §!!t§:§%!M§;
      
      private static var §^@§:§1R§;
       
      
      public function §26§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §=0§() : void
      {
         §1^§.loadLevel(§1^§.§`!L§());
         §>V§ = §8-§;
      }
      
      public static function §?!S§(param1:int) : void
      {
         §-!;§ = param1;
         §>V§ = §8-§;
      }
      
      public static function §!=§() : void
      {
         if(§'!V§.§1!2§.camera)
         {
            §9t§ = §'!V§.§1!2§.camera.§[!+§;
         }
         §>V§ = §8-§;
      }
      
      override public function deActivate() : void
      {
         if(§!!t§)
         {
            §!!t§.§`g§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§4!N§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§2! § = §1^§.§'!_§(§1^§.§ ]§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§9t§))
            {
               §'!V§.§1!2§.camera.§<l§(§9t§);
               §9t§ = NaN;
            }
         }
         else
         {
            _loc2_ = §1^§.§['§(§1^§.§ ]§);
            if(_loc2_)
            {
               if(!§^@§)
               {
                  §^@§ = new §1R§();
               }
               if(!§!!t§)
               {
                  §!!t§ = new §%!M§();
                  _loc4_ = §[e§.assetsUrl || "";
                  _loc5_ = §[e§.buildNumber || "";
                  §!!t§.init(§%!`§.§[!6§(),_loc4_,_loc5_,§^@§);
               }
               §!!t§.§<C§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §!!t§.§^!K§(<pack url="{_loc3_}"/>);
               §!!t§.§7S§(this.packageLoaded);
            }
         }
      }
      
      protected function packageLoaded() : void
      {
         var _loc1_:§2! § = §1^§.§'!_§(§1^§.§ ]§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§9t§))
            {
               §'!V§.§1!2§.camera.§<l§(§9t§);
               §9t§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §'!V§.§1!2§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §'!V§.§1!2§.§<!q§;
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
         mNextState = §?&§.STATE_NAME;
      }
   }
}
