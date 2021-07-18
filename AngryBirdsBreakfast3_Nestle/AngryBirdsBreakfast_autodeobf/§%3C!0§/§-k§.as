package §<!0§
{
   import §24§.;
   import §2`§.§%!!§;
   import §4!i§.§0]§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §-k§
   {
      
      private static var §9b§:Array = [];
      
      private static var §"F§:§0]§ = new §0]§();
      
      private static var §'J§:Dictionary = new Dictionary();
       
      
      public function §-k§()
      {
         super();
      }
      
      public static function §9!9§(param1:String, param2:ByteArray) : void
      {
         §"F§[param1] = param2;
      }
      
      public static function §]t§(param1:String) : ByteArray
      {
         return §"F§[param1];
      }
      
      public static function §5" §(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§5a§ = null;
         for(_loc2_ in param1)
         {
            if(!§'J§[_loc2_])
            {
               _loc3_ = new §5a§(param1[_loc2_],_loc2_);
               §#7§.log("Initializing cutScene: " + _loc2_);
               §'J§[_loc2_] = _loc3_;
               if(§9b§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§&p§ = §5a§.§;"$§;
               }
            }
         }
      }
      
      public static function §<a§(param1:String, param2:§%!!§) : §5a§
      {
         var _loc3_:§5a§ = §'J§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §5a§
      {
         var _loc2_:§5a§ = §'J§[param1];
         if(_loc2_ && §9b§.indexOf(param1))
         {
            _loc2_.§&p§ = §5a§.§;"$§;
         }
         return _loc2_;
      }
      
      public static function §^W§(param1:String) : void
      {
         if(§9b§.indexOf(param1) < 0)
         {
            §9b§.push(param1);
         }
      }
   }
}
