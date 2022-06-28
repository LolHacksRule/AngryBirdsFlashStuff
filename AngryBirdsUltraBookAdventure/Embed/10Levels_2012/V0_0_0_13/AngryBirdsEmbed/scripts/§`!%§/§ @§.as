package §`!%§
{
   import §"!5§.§,!!§;
   import §"X§.§^!;§;
   import §,U§.§+u§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import §>!C§.§^h§;
   import §[H§.§7P§;
   
   public class § @§ extends §"h§
   {
      
      public static const §0!7§:String = "LevelLoadStateClassic";
      
      private static var §;W§:Number;
      
      private static var §%!E§:§^!;§;
      
      private static var §"e§:§+u§;
       
      
      public function § @§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §-!-§() : void
      {
         §6M§.§<H§(§6M§.§1$§());
         §&,§ = §?!8§;
      }
      
      public static function §&[§(param1:int) : void
      {
         §%a§ = param1;
         §&,§ = §?!8§;
      }
      
      public static function §'d§() : void
      {
         if(§,!!§.§;4§.camera)
         {
            §;W§ = §,!!§.§;4§.camera.§=G§;
         }
         §&,§ = §?!8§;
      }
      
      override public function deActivate() : void
      {
         if(§%!E§)
         {
            §%!E§.§;,§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§^h§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§9R§ = §6M§.§ r§(§6M§.§[z§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§;W§))
            {
               §,!!§.§;4§.camera.§,!&§(§;W§);
               §;W§ = NaN;
            }
         }
         else
         {
            _loc2_ = §6M§.§1o§(§6M§.§[z§);
            if(_loc2_)
            {
               if(!§"e§)
               {
                  §"e§ = new §+u§();
               }
               if(!§%!E§)
               {
                  §%!E§ = new §^!;§();
                  _loc4_ = §=l§.assetsUrl || "";
                  _loc5_ = §=l§.buildNumber || "";
                  §%!E§.init(§7P§.§#§(),_loc4_,_loc5_,§"e§);
               }
               §%!E§.§9y§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §%!E§.§6j§(<pack url="{_loc3_}"/>);
               §%!E§.§7s§(this.§!!$§);
            }
         }
      }
      
      protected function §!!$§() : void
      {
         var _loc1_:§9R§ = §6M§.§ r§(§6M§.§[z§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§;W§))
            {
               §,!!§.§;4§.camera.§,!&§(§;W§);
               §;W§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §,!!§.§;4§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §,!!§.§;4§.§5=§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§]r§();
      }
      
      protected function §]r§() : String
      {
         return StatePlay.§0!7§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §!,§.§0!7§;
      }
   }
}
