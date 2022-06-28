package §_-ad§
{
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-Ga§.§_-bm§;
   import §_-Hb§.§_-ok§;
   import §_-aC§.§_-ML§;
   import §_-dX§.§_-03L§;
   import §_-qO§.§ in§;
   
   public class §_-MG§ extends §_-gC§
   {
      
      public static const §_-pk§:String = "LevelLoadStateClassic";
      
      private static var §_-07h§:Number;
      
      private static var §_-09o§:§_-03L§;
      
      private static var §_-q§:§_-ML§;
       
      
      public function §_-MG§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-4t§() : void
      {
         LevelManager.§_-s8§(LevelManager.§_-xE§());
         §_-lc§ = §_-z0§;
      }
      
      public static function §_-0Dj§(param1:int) : void
      {
         §_-0F5§ = param1;
         §_-lc§ = §_-z0§;
      }
      
      public static function §_-0Eg§() : void
      {
         if(§ in§.§_-Dc§.camera)
         {
            §_-07h§ = § in§.§_-Dc§.camera.§_-kC§;
         }
         §_-lc§ = §_-z0§;
      }
      
      override public function deActivate() : void
      {
         if(§_-09o§)
         {
            §_-09o§.§_-0Eu§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§_-0C5§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-bm§ = LevelManager.§_-U0§(LevelManager.§_-HM§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§_-07h§))
            {
               § in§.§_-Dc§.camera.§_-5H§(§_-07h§);
               §_-07h§ = NaN;
            }
         }
         else
         {
            _loc2_ = LevelManager.§_-N9§(LevelManager.§_-HM§);
            if(_loc2_)
            {
               if(!§_-q§)
               {
                  §_-q§ = new §_-ML§();
               }
               if(!§_-09o§)
               {
                  §_-09o§ = new §_-03L§();
                  _loc4_ = §_-lH§.assetsUrl || "";
                  _loc5_ = §_-lH§.buildNumber || "";
                  §_-09o§.init(§_-ok§.§_-Ji§(),_loc4_,_loc5_,§_-q§);
               }
               §_-09o§.§_-02K§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §_-09o§.§_-0Ab§(<pack url="{_loc3_}"/>);
               §_-09o§.§_-Zb§(this.§_-HL§);
            }
         }
      }
      
      protected function §_-HL§() : void
      {
         var _loc1_:§_-bm§ = LevelManager.§_-U0§(LevelManager.§_-HM§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§_-07h§))
            {
               § in§.§_-Dc§.camera.§_-5H§(§_-07h§);
               §_-07h§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return § in§.§_-Dc§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return § in§.§_-Dc§.§_-033§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§_-012§();
      }
      
      protected function §_-012§() : String
      {
         return StatePlay.§_-pk§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §_-UO§.§_-pk§;
      }
   }
}
