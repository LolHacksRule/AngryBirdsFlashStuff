package §_-eS§
{
   import §_-Hb§.§_-P-§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §_-OY§ extends §_-Za§
   {
      
      private static const §_-na§:Boolean = AngryBirdsFP11.§_-LI§;
      
      private static const §_-2v§:String = "powerup-used";
      
      private static const §_-bt§:String = "level-powerup-used";
      
      private static const §_-Zp§:String = "powerup-" + §_-yA§;
      
      private static const §_-Qw§:String = §_-yA§ + "-powerup";
      
      private static const §_-dC§:String = "framerate";
      
      private static const §_-KP§:String = "external-pause";
      
      private static const §_-6p§:String = "gift";
      
      private static const §_-5d§:String = "shop";
      
      private static const §_-1p§:String = "brag";
      
      private static const §_-eN§:String = "invite";
      
      private static const §_-Ja§:String = "avatar";
      
      private static const §_-0E2§:String = "warning";
      
      private static const §_-z§:String = "user-statistics";
      
      private static const §_-wM§:String = "error";
      
      private static const §_-GN§:String = "paused";
      
      private static const §_-zh§:String = "resumed";
      
      private static const §_-05D§:String = "gift-claimed";
      
      private static const §_-39§:String = "campaign-gift-claimed";
      
      private static const §_-bB§:String = "opened";
      
      private static const §_-L-§:String = "product-selected";
      
      private static const §_-F4§:String = "product-buy-selected";
      
      private static const §_-Wd§:String = "product-buy-completed";
      
      private static const §_-VV§:String = "brag-shown";
      
      private static const §_-09w§:String = "brag-clicked";
      
      private static const §_-3§:String = "friend-clicked";
      
      private static const §_-jP§:String = "generic-clicked";
      
      private static const §_-XK§:String = "opened";
      
      private static const §_-0FI§:String = "set";
      
      private static const §_-EI§:String = "product-set";
      
      private static const §_-Bm§:String = §_-F4§;
      
      private static const §_-id§:String = §_-Wd§;
      
      private static const §_-bA§:String = "share-clicked";
      
      private static const §_-07L§:String = "share-completed";
      
      private static const §_-jB§:String = "download-failed";
      
      private static const §_-05g§:String = "3rd-party-cookies-missing";
      
      private static const §_-kx§:String = "invalid-level";
      
      private static const §_-B3§:String = "flash-var-missing";
      
      private static const §_-5A§:String = "friend-count";
      
      private static const §_-07G§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§_-ku§,§_-yA§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§_-5v§,§_-j2§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§_-2v§,§_-bt§,§_-Zp§,§_-Qw§,§_-dC§,§_-KP§,§_-6p§,§_-5d§,§_-1p§,§_-eN§,§_-Ja§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§_-wM§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §_-UQ§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §_-A3§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §_-bp§:Array = [];
      
      private static var §_-3g§:int = 0;
      
      private static var §_-va§:int = 0;
      
      private static var §_-64§:int = 0;
      
      private static var §_-i0§:int = 0;
       
      
      public function §_-OY§()
      {
         super();
      }
      
      public static function §_-Pc§() : void
      {
         if(Math.random() <= 0.1)
         {
            sSample10Percent = true;
         }
         if(Math.random() <= 0.01)
         {
            sSample1Percent = true;
         }
      }
      
      public static function §_-05E§(param1:int, param2:int) : void
      {
         §_-Ve§(§_-Za§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(§_-P-§.§_-0Ak§(AngryBirdsFP11.§_-08Q§ + "/clienterror/" + param1));
      }
      
      public static function §_-Ve§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §_-55§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §_-Za§.trackSampledEvent(_loc4_,§_-042§,param1,param2,param3);
      }
      
      public static function §_-nK§(param1:String, param2:String) : void
      {
         var _loc3_:int = §_-0C0§();
         §_-mK§(§_-2v§,param1,param2,0);
         §_-mK§(§_-bt§,param2,param1,0);
      }
      
      public static function §_-Zr§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §_-09n§(param1))
            {
               §_-mK§(§_-Zp§,_loc4_,param2,param3);
               §_-mK§(§_-Qw§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §_-7a§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§_-bp§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §_-bp§.length == 0;
         §_-bp§.push(param2);
         if(param3)
         {
            _loc6_ = §_-Za§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §_-OY§.§_-UQ§;
            }
         }
         else
         {
            _loc6_ = §_-Za§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §_-OY§.§_-A3§;
            }
         }
         if(_loc5_)
         {
            §_-Ve§(_loc6_,param1.toString(),param1);
         }
         §_-mK§(§_-dC§,_loc6_,param2,param1);
      }
      
      public static function §_-TR§(param1:String, param2:int) : void
      {
         ++§_-3g§;
         §_-mK§(§_-6p§,§_-05D§,param1,param2);
      }
      
      public static function §_-uf§() : void
      {
         §_-mK§(§_-6p§,§_-39§,null,0);
      }
      
      public static function §_-U3§() : void
      {
         ++§_-va§;
         §_-64§ = §_-0C0§();
         §_-mK§(§_-KP§,§_-GN§,§_-va§.toString(),§_-64§);
      }
      
      public static function §_-cQ§() : void
      {
         §_-mK§(§_-KP§,§_-zh§,"",§_-0C0§(§_-64§));
      }
      
      public static function §_-gL§() : void
      {
         if(!§_-na§)
         {
            §_-mK§(§_-5d§,§_-bB§,null,0);
         }
      }
      
      public static function §_-05o§(param1:String) : void
      {
         if(!§_-na§)
         {
            §_-mK§(§_-5d§,§_-L-§,param1,0);
         }
      }
      
      public static function §_-rk§(param1:String, param2:int) : void
      {
         if(!§_-na§)
         {
            §_-mK§(§_-5d§,§_-F4§,param1,param2,false);
         }
      }
      
      public static function §_-Zd§(param1:String, param2:int) : void
      {
         if(!§_-na§)
         {
            §_-mK§(§_-5d§,§_-Wd§,param1,param2,false);
         }
      }
      
      public static function §_-0Dd§(param1:String) : void
      {
         §_-mK§(§_-1p§,§_-VV§,param1,0);
      }
      
      public static function §_-8t§(param1:String) : void
      {
         §_-mK§(§_-1p§,§_-09w§,param1,0);
      }
      
      public static function §_-sn§() : void
      {
         §_-mK§(§_-eN§,§_-3§,null,0);
      }
      
      public static function §_-V4§() : void
      {
         §_-mK§(§_-eN§,§_-jP§,null,0);
      }
      
      public static function §_-T6§() : void
      {
         §_-mK§(§_-Ja§,§_-XK§,null,0);
      }
      
      public static function §_-LC§() : void
      {
         §_-mK§(§_-Ja§,§_-0FI§,null,0);
      }
      
      public static function §_-Mb§(param1:String) : void
      {
         §_-mK§(§_-Ja§,§_-EI§,param1,0);
      }
      
      public static function §_-0-X§() : void
      {
         §_-mK§(§_-Ja§,§_-bA§,null,0);
      }
      
      public static function §_-uI§() : void
      {
         §_-mK§(§_-Ja§,§_-07L§,null,0);
      }
      
      public static function §_-nm§(param1:String, param2:int = 0) : void
      {
         if(!§_-na§)
         {
            §_-mK§(§_-Ja§,§_-Bm§,param1,param2,false);
         }
      }
      
      public static function §_-0h§(param1:String, param2:int = 0) : void
      {
         if(!§_-na§)
         {
            §_-mK§(§_-Ja§,§_-id§,param1,param2,false);
         }
      }
      
      public static function §_-ta§(param1:String) : void
      {
         §_-mK§(§_-0E2§,§_-jB§,param1,0);
      }
      
      public static function §_-6V§() : void
      {
         §_-mK§(§_-0E2§,§_-05g§,null,0);
      }
      
      public static function §_-03O§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §_-mK§(§_-0E2§,§_-kx§,param1,0);
      }
      
      public static function §_-Sp§(param1:String) : void
      {
         §_-mK§(§_-0E2§,§_-B3§,param1,0);
      }
      
      public static function §_-Yx§(param1:int) : void
      {
         §_-mK§(§_-z§,§_-5A§,param1.toString(),param1);
      }
      
      public static function §_-7i§(param1:String) : void
      {
         §_-mK§(§_-z§,§_-07G§,param1,0);
      }
      
      public static function §_-ff§(param1:String) : void
      {
         §_-mK§(§_-wM§,param1,"",0,false);
      }
      
      private static function §_-mK§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §_-0Ai§;
            if(param5)
            {
               _loc6_ = §_-55§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §_-55§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §_-0Ai§;
      }
      
      private static function §_-09n§(param1:Array) : String
      {
         var _loc4_:String = null;
         if(param1 == null || param1.length == 0)
         {
            return null;
         }
         var _loc2_:String = "";
         var _loc3_:Array = param1.concat();
         _loc3_.sort();
         for each(_loc4_ in _loc3_)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += "-" + _loc4_;
            }
            else
            {
               _loc2_ = _loc4_;
            }
         }
         return _loc2_;
      }
      
      private static function §_-0C0§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
