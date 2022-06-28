package § !@§
{
   import §+F§.§"o§;
   import §1!-§.§2n§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §6!F§.§9A§;
   import §7W§.§'!-§;
   
   public class §^!K§ extends §<v§
   {
      
      public static const §>9§:String = "LevelLoadStateClassic";
      
      private static var §+!%§:Number;
      
      private static var §=r§:§"o§;
      
      private static var §9y§:§'!-§;
       
      
      public function §^!K§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §+!4§() : void
      {
         §[4§.§]a§(§[4§.§4E§());
         §+?§ = §`!2§;
      }
      
      public static function §1t§(param1:int) : void
      {
         §0J§ = param1;
         §+?§ = §`!2§;
      }
      
      public static function §@!<§() : void
      {
         if(§=w§.§ o§.camera)
         {
            §+!%§ = §=w§.§ o§.camera.§^!4§;
         }
         §+?§ = §`!2§;
      }
      
      override public function deActivate() : void
      {
         if(§=r§)
         {
            §=r§.§1!8§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§2n§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§@Z§ = §[4§.§!_§(§[4§.§"!>§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§+!%§))
            {
               §=w§.§ o§.camera.§"!6§(§+!%§);
               §+!%§ = NaN;
            }
         }
         else
         {
            _loc2_ = §[4§.§<%§(§[4§.§"!>§);
            if(_loc2_)
            {
               if(!§9y§)
               {
                  §9y§ = new §'!-§();
               }
               if(!§=r§)
               {
                  §=r§ = new §"o§();
                  _loc4_ = §%!8§.assetsUrl || "";
                  _loc5_ = §%!8§.buildNumber || "";
                  §=r§.init(§9A§.§,!5§(),_loc4_,_loc5_,§9y§);
               }
               §=r§.§6!§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §=r§.§]<§(<pack url="{_loc3_}"/>);
               §=r§.§^]§(this.§'U§);
            }
         }
      }
      
      protected function §'U§() : void
      {
         var _loc1_:§@Z§ = §[4§.§!_§(§[4§.§"!>§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§+!%§))
            {
               §=w§.§ o§.camera.§"!6§(§+!%§);
               §+!%§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §=w§.§ o§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §=w§.§ o§.§>&§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§=!-§();
      }
      
      protected function §=!-§() : String
      {
         return StatePlay.§>9§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §6!@§.§>9§;
      }
   }
}
