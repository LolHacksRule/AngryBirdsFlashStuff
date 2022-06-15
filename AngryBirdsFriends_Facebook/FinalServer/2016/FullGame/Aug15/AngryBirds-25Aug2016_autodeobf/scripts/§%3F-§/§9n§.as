package §?-§
{
   import §%$!§.§+3§;
   import §?§.§>"$§;
   
   public class §9n§
   {
      
      private static const §5#`§:Boolean = true;
      
      public static var §""i§:Object = null;
      
      public static var §4@§:String = "30% OFF";
       
      
      public function §9n§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(§>"$§.DEBUG_MODE_ENABLED && §5#`§)
         {
            §""i§ = {
               "id":"MightyEagle",
               "prices":[{
                  "q":20,
                  "p":10
               },{
                  "q":50,
                  "p":20
               },{
                  "q":150,
                  "p":50
               },{
                  "q":400,
                  "p":100
               },{
                  "q":1000,
                  "p":200,
                  "cp":100,
                  "cs":1357560687759,
                  "ce":1357565687759
               }]
            };
         }
         for each(_loc2_ in param1)
         {
            _loc3_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
            if(_loc3_ > _loc2_.cs && _loc3_ < _loc2_.ce)
            {
               §""i§ = _loc2_;
            }
         }
      }
      
      public static function §6!C§() : Boolean
      {
         return §""i§ != null && §7!5§() > 0;
      }
      
      public static function §7!5§() : int
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         if(§""i§)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
            _loc2_ = 0;
            if(§""i§.hasOwnProperty("prices"))
            {
               _loc2_ = (§""i§["prices"][4]["ce"] - _loc1_) / 1000;
            }
            else if(§""i§.hasOwnProperty("ce"))
            {
               _loc2_ = (§""i§["ce"] - _loc1_) / 1000;
            }
            return int(Math.max(0,_loc2_));
         }
         return 0;
      }
      
      public static function §-#u§() : String
      {
         var _loc1_:Number = §7!5§();
         var _loc2_:* = Math.floor(_loc1_ / 3600);
         _loc1_ -= _loc2_ * 3600;
         var _loc3_:* = Math.floor(_loc1_ / 60);
         _loc1_ -= _loc3_ * 60;
         var _loc4_:* = Math.floor(_loc1_);
         if(_loc2_ < 10)
         {
            _loc2_ = "0" + _loc2_;
         }
         if(_loc3_ < 10)
         {
            _loc3_ = "0" + _loc3_;
         }
         if(_loc4_ < 10)
         {
            _loc4_ = "0" + _loc4_;
         }
         return _loc2_ + ":" + _loc3_ + ":" + _loc4_;
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
   }
}
