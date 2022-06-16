package §each §
{
   import §5!G§.§&2§;
   import §^!o§.§=1§;
   
   public class §@x§
   {
      
      private static const §;y§:Boolean = false;
      
      public static var §`e§:Object = null;
       
      
      public function §@x§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(§&2§.§&!M§ && §;y§)
         {
            §`e§ = {
               "i":"MIGHTYEAGLE",
               "q":1000,
               "p":200,
               "cp":100,
               "cs":1358254534611,
               "ce":1358254534611 + 1000 * 60 * 60 * 24
            };
         }
         for each(_loc2_ in param1)
         {
            _loc3_ = §,"I§.§&q§.§+g§.§?"&§.§?9§;
            if(_loc3_ > _loc2_.cs && _loc3_ < _loc2_.ce)
            {
               §`e§ = _loc2_;
            }
         }
      }
      
      public static function §11§() : Boolean
      {
         return §`e§ != null && §^G§() > 0;
      }
      
      public static function §^G§() : int
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         if(§`e§)
         {
            _loc1_ = §,"I§.§&q§.§+g§.§?"&§.§?9§;
            _loc2_ = (§`e§["ce"] - _loc1_) / 1000;
            return int(Math.max(0,_loc2_));
         }
         return 0;
      }
      
      public static function §3!u§(param1:Boolean = false) : String
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc2_:Number = §^G§();
         var _loc3_:int = Math.floor(_loc2_ / 3600);
         if(_loc3_ > 24 || param1)
         {
            return §=1§.§3!u§(_loc2_)[0];
         }
         _loc4_ = Math.floor(_loc2_ / 3600);
         _loc2_ -= _loc4_ * 3600;
         _loc5_ = Math.floor(_loc2_ / 60);
         _loc2_ -= _loc5_ * 60;
         _loc6_ = Math.floor(_loc2_);
         if(_loc4_ < 10)
         {
            _loc4_ = "0" + _loc4_;
         }
         if(_loc5_ < 10)
         {
            _loc5_ = "0" + _loc5_;
         }
         if(_loc6_ < 10)
         {
            _loc6_ = "0" + _loc6_;
         }
         return _loc4_ + ":" + _loc5_ + ":" + _loc6_;
      }
   }
}
