package §""6§
{
   import §#!+§.§[E§;
   import §'x§.§?z§;
   import §+%§.§+"%§;
   import §+%§.§5!F§;
   import §+%§.§=^§;
   import §45§.§@"'§;
   import §]X§.§>q§;
   
   public class §!Z§ extends §!v§
   {
      
      public static const §^z§:String = "LevelLoadStateClassic";
      
      private static var §`" §:Number;
      
      private static var §7!7§:§[E§;
      
      private static var §8l§:§>q§;
       
      
      public function §!Z§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §0""§() : void
      {
         §+"%§.loadLevel(§+"%§.§^!`§());
         §+"'§ = §=2§;
      }
      
      public static function §]M§(param1:int) : void
      {
         §8!a§ = param1;
         §+"'§ = §=2§;
      }
      
      public static function §0!f§() : void
      {
         if(§?z§.§=7§.camera)
         {
            §`" § = §?z§.§=7§.camera.§&!Z§;
         }
         §+"'§ = §=2§;
      }
      
      override public function deActivate() : void
      {
         if(§7!7§)
         {
            §7!7§.§%E§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§=^§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§5!F§ = §+"%§.§,>§(§+"%§.§9!'§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§`" §))
            {
               §?z§.§=7§.camera.§;"2§(§`" §);
               §`" § = NaN;
            }
         }
         else
         {
            _loc2_ = §+"%§.§?!7§(§+"%§.§9!'§);
            if(_loc2_)
            {
               if(!§8l§)
               {
                  §8l§ = new §>q§();
               }
               if(!§7!7§)
               {
                  §7!7§ = new §[E§();
                  _loc4_ = §`!+§.assetsUrl || "";
                  _loc5_ = §`!+§.buildNumber || "";
                  §7!7§.init(§@"'§.§%!I§(),_loc4_,_loc5_,§8l§);
               }
               §7!7§.§0!L§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §7!7§.§%!!§(<pack url="{_loc3_}"/>);
               §7!7§.§<=§(this.§;"7§);
            }
         }
      }
      
      protected function §;"7§() : void
      {
         var _loc1_:§5!F§ = §+"%§.§,>§(§+"%§.§9!'§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§`" §))
            {
               §?z§.§=7§.camera.§;"2§(§`" §);
               §`" § = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §?z§.§=7§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §?z§.§=7§.§"G§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§^z§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §`!%§.§^z§;
      }
   }
}
