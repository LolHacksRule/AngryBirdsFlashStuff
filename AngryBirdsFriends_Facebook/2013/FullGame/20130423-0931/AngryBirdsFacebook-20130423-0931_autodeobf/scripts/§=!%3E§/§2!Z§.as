package §=!>§
{
   import §@!"§.§?l§;
   
   public class §2!Z§
   {
      
      private static const §@!y§:Boolean = true;
      
      public static var §25§:Object = null;
      
      public static var §'!n§:String = "30% OFF";
       
      
      public function §2!Z§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(§?l§.§#V§ && §@!y§)
         {
            §25§ = {
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
            _loc3_ = §%"S§.§!C§.§9"%§.§ Y§.§?!;§;
            if(_loc3_ > _loc2_.cs && _loc3_ < _loc2_.ce)
            {
               §25§ = _loc2_;
            }
         }
      }
      
      public static function §&9§() : Boolean
      {
         return §25§ != null && §5"S§() > 0;
      }
      
      public static function §5"S§() : int
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         if(§25§)
         {
            _loc1_ = §%"S§.§!C§.§9"%§.§ Y§.§?!;§;
            _loc2_ = (§25§["prices"][4]["ce"] - _loc1_) / 1000;
            return int(Math.max(0,_loc2_));
         }
         return 0;
      }
      
      public static function §2"I§() : String
      {
         var _loc1_:Number = §5"S§();
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
   }
}
