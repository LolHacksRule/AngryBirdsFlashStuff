package §`n§
{
   import flash.geom.Point;
   
   public class §1!f§
   {
      
      private static var §!!;§:uint;
      
      private static var §]#B§:uint;
      
      private static var counter:uint;
      
      private static var §8!J§:Vector.<§1!f§>;
      
      private static var §["G§:§1!f§;
       
      
      public var §5$3§:Number;
      
      public var §?"B§:Point;
      
      public function §1!f§()
      {
         super();
      }
      
      public static function init(param1:uint, param2:uint) : void
      {
         var _loc4_:§1!f§ = null;
         §!!;§ = param1;
         §]#B§ = param2;
         counter = param1;
         §8!J§ = new Vector.<§1!f§>(§!!;§);
         var _loc3_:uint = param1;
         while(--_loc3_ > -1)
         {
            (_loc4_ = new §1!f§()).§?"B§ = new Point();
            §8!J§[_loc3_] = _loc4_;
         }
      }
      
      public static function getObject() : §1!f§
      {
         var _loc2_:§1!f§ = null;
         if(counter > 0)
         {
            return §["G§ = §8!J§[--counter];
         }
         var _loc1_:uint = §]#B§;
         while(--_loc1_ > -1)
         {
            _loc2_ = new §1!f§();
            _loc2_.§?"B§ = new Point();
            §8!J§.unshift(_loc2_);
         }
         counter = §]#B§;
         return getObject();
      }
      
      public static function §0"L§(param1:§1!f§) : void
      {
         var _loc2_:* = counter++;
         §8!J§[_loc2_] = param1;
      }
      
      public static function dispose() : void
      {
         var _loc1_:int = 0;
         if(§8!J§)
         {
            _loc1_ = 0;
            while(_loc1_ < §8!J§.length)
            {
               §8!J§[_loc1_];
               _loc1_++;
            }
         }
         §8!J§ = null;
         §["G§ = null;
      }
   }
}
