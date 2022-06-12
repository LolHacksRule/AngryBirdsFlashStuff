package §9!#§
{
   import §&l§.§'"0§;
   import §3!S§.§%s§;
   import §5<§.§6",§;
   import §6!&§.§0!b§;
   import §6!&§.§1!c§;
   import §6!&§.§68§;
   import §]'§.§%!J§;
   
   public class §+0§ extends §?X§
   {
      
      public static const §8G§:String = "LevelLoadStateClassic";
      
      private static var §+7§:Number;
      
      private static var §%!f§:§'"0§;
      
      private static var §4!?§:§%!J§;
       
      
      public function §+0§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §!i§() : void
      {
         §1!c§.loadLevel(§1!c§.§+5§());
         §5!'§ = §7W§;
      }
      
      public static function §`!b§(param1:int) : void
      {
         §<T§ = param1;
         §5!'§ = §7W§;
      }
      
      public static function §2!2§() : void
      {
         if(§%s§.§`!f§.camera)
         {
            §+7§ = §%s§.§`!f§.camera.§4"8§;
         }
         §5!'§ = §7W§;
      }
      
      override public function deActivate() : void
      {
         if(§%!f§)
         {
            §%!f§.§ !M§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§68§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§0!b§ = §1!c§.§-!q§(§1!c§.§'Z§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§+7§))
            {
               §%s§.§`!f§.camera.§ !F§(§+7§);
               §+7§ = NaN;
            }
         }
         else
         {
            _loc2_ = §1!c§.§!F§(§1!c§.§'Z§);
            if(_loc2_)
            {
               if(!§4!?§)
               {
                  §4!?§ = new §%!J§();
               }
               if(!§%!f§)
               {
                  §%!f§ = new §'"0§();
                  _loc4_ = §1i§.assetsUrl || "";
                  _loc5_ = §1i§.buildNumber || "";
                  §%!f§.init(§6",§.§>3§(),_loc4_,_loc5_,§4!?§);
               }
               §%!f§.§4s§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §%!f§.§ F§(<pack url="{_loc3_}"/>);
               §%!f§.§-"3§(this.§7!c§);
            }
         }
      }
      
      protected function §7!c§() : void
      {
         var _loc1_:§0!b§ = §1!c§.§-!q§(§1!c§.§'Z§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§+7§))
            {
               §%s§.§`!f§.camera.§ !F§(§+7§);
               §+7§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §%s§.§`!f§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §%s§.§`!f§.§-"$§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§8G§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §#B§.§8G§;
      }
   }
}
