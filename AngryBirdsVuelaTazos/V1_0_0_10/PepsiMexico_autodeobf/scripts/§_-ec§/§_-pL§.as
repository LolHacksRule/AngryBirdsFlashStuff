package §_-ec§
{
   public class §_-pL§
   {
      
      public static const §_-Tn§:Boolean = false;
      
      private static var §_-6f§:Array;
       
      
      public function §_-pL§()
      {
         super();
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         §_-6f§ = new Array();
         var _loc2_:Number = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].@id;
            _loc4_ = param1[_loc2_][0];
            §_-6f§[_loc3_] = _loc4_;
            _loc2_++;
         }
      }
      
      public static function getText(param1:String) : String
      {
         if(§_-Tn§ && §_-6f§[param1] == null)
         {
            return "Missing text: " + param1;
         }
         return §_-6f§[param1];
      }
   }
}
