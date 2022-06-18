package §@!%§
{
   import § "§.§1!9§;
   import § "§.§8!3§;
   import § "§.§;4§;
   import §0M§.§@2§;
   import §10§.§#!4§;
   import §`X§.§%!5§;
   import §null §.§;i§;
   
   public class §2!"§ extends §function§
   {
      
      public static const §5%§:String = "LevelLoadStateClassic";
      
      private static var §,!C§:Number;
      
      private static var §0!7§:§;i§;
      
      private static var §!2§:§@2§;
       
      
      public function §2!"§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §6!9§() : void
      {
         §8!3§.§+f§(§8!3§.§9!$§());
         §`K§ = §"W§;
      }
      
      public static function §;!3§(param1:int) : void
      {
         §1!-§ = param1;
         §`K§ = §"W§;
      }
      
      public static function §`!B§() : void
      {
         if(§#!4§.§^Y§.camera)
         {
            §,!C§ = §#!4§.§^Y§.camera.§ i§;
         }
         §`K§ = §"W§;
      }
      
      override public function deActivate() : void
      {
         if(§0!7§)
         {
            §0!7§.§<!8§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§1!9§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§;4§ = §8!3§.§]!>§(§8!3§.§-[§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§,!C§))
            {
               §#!4§.§^Y§.camera.§?Z§(§,!C§);
               §,!C§ = NaN;
            }
         }
         else
         {
            _loc2_ = §8!3§.§=!9§(§8!3§.§-[§);
            if(_loc2_)
            {
               if(!§!2§)
               {
                  §!2§ = new §@2§();
               }
               if(!§0!7§)
               {
                  §0!7§ = new §;i§();
                  _loc4_ = §#s§.assetsUrl || "";
                  _loc5_ = §#s§.buildNumber || "";
                  §0!7§.init(§%!5§.§!&§(),_loc4_,_loc5_,§!2§);
               }
               §0!7§.§if§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §0!7§.§'O§(<pack url="{_loc3_}"/>);
               §0!7§.§-Y§(this.§19§);
            }
         }
      }
      
      protected function §19§() : void
      {
         var _loc1_:§;4§ = §8!3§.§]!>§(§8!3§.§-[§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§,!C§))
            {
               §#!4§.§^Y§.camera.§?Z§(§,!C§);
               §,!C§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §#!4§.§^Y§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §#!4§.§^Y§.§0!,§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§`!%§();
      }
      
      protected function §`!%§() : String
      {
         return StatePlay.§5%§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §]V§.§5%§;
      }
   }
}
