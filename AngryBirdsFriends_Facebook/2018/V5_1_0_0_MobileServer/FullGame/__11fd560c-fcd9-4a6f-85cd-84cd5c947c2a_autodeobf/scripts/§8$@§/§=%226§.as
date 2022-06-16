package §8$@§
{
   import flash.geom.Point;
   
   public class §="6§
   {
      
      private static var §<"s§:uint;
      
      private static var §`"W§:uint;
      
      private static var counter:uint;
      
      private static var §6!Q§:Vector.<§="6§>;
      
      private static var §3"]§:§="6§;
       
      
      public var §`"L§:Number;
      
      public var §%#d§:Point;
      
      public function §="6§()
      {
         super();
      }
      
      public static function init(param1:uint, param2:uint) : void
      {
         var _loc4_:§="6§ = null;
         §<"s§ = param1;
         §`"W§ = param2;
         counter = param1;
         §6!Q§ = new Vector.<§="6§>(§<"s§);
         var _loc3_:uint = param1;
         while(--_loc3_ > -1)
         {
            (_loc4_ = new §="6§()).§%#d§ = new Point();
            §6!Q§[_loc3_] = _loc4_;
         }
      }
      
      public static function getObject() : §="6§
      {
         var _loc2_:§="6§ = null;
         if(counter > 0)
         {
            return §3"]§ = §6!Q§[--counter];
         }
         var _loc1_:uint = §`"W§;
         while(--_loc1_ > -1)
         {
            _loc2_ = new §="6§();
            _loc2_.§%#d§ = new Point();
            §6!Q§.unshift(_loc2_);
         }
         counter = §`"W§;
         return getObject();
      }
      
      public static function §="u§(param1:§="6§) : void
      {
         var _loc2_:* = counter++;
         §6!Q§[_loc2_] = param1;
      }
      
      public static function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§="6§ = null;
         if(§6!Q§)
         {
            _loc1_ = 0;
            while(_loc1_ < §6!Q§.length)
            {
               _loc2_ = §6!Q§[_loc1_];
               _loc2_ = null;
               _loc1_++;
            }
         }
         §6!Q§ = null;
         §3"]§ = null;
      }
   }
}
