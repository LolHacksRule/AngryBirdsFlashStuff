package §9!?§
{
   import flash.utils.getTimer;
   
   public class §#!=§ extends §%t§
   {
      
      public static const §%9§:String = "level-selection";
      
      public static const §^!Q§:String = "registration-success";
      
      public static const §,"§:String = "registration-failure";
      
      public static const §]R§:String = "login-success";
      
      public static const §8!I§:String = "login-failure";
      
      private static const §%l§:Boolean = §2!S§.§"e§;
      
      private static const §26§:String = "framerate";
      
      private static const §4R§:String = "warning";
      
      private static const §]?§:String = "user-statistics";
      
      private static const §5!X§:String = "error";
      
      private static const §@!2§:String = "download-failed";
      
      private static const §+p§:String = "invalid-level";
      
      private static const §<r§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§;?§,§5!B§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§>!`§,§96§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§26§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§5!X§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §';§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §&!c§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §?!B§:Array = [];
       
      
      public function §#!=§()
      {
         super();
      }
      
      public static function §#X§() : void
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
      
      public static function §2!a§(param1:int, param2:int) : void
      {
         §^!4§(§%t§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §^!4§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §`&§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §%t§.trackSampledEvent(_loc4_,§]^§,param1,param2,param3);
      }
      
      public static function §`!;§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§?!B§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §?!B§.length == 0;
         §?!B§.push(param2);
         if(param3)
         {
            _loc6_ = §%t§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §#!=§.§';§;
            }
         }
         else
         {
            _loc6_ = §%t§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §#!=§.§&!c§;
            }
         }
         if(_loc5_)
         {
            §^!4§(_loc6_,param1.toString(),param1);
         }
         §&>§(§26§,_loc6_,param2,param1);
      }
      
      public static function §+f§(param1:String) : void
      {
         §&>§(§4R§,§@!2§,param1,0);
      }
      
      public static function §0!8§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §&>§(§4R§,§+p§,param1,0);
      }
      
      public static function §?G§(param1:String) : void
      {
         §&>§(§4R§,§<r§,param1,0);
      }
      
      public static function §7!>§(param1:String) : void
      {
         §&>§(§5!X§,param1,"",0,false);
      }
      
      private static function §&>§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §'!?§;
            if(param5)
            {
               _loc6_ = §`&§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §`&§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §'!?§;
      }
      
      private static function §3'§(param1:Array) : String
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
      
      private static function §7w§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
