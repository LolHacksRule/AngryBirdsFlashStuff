package §3§#9
{
   import flash.geom.Point;
   
   public class §try §
   {
      
      private static var §2!r§:uint;
      
      private static var §?!8§:uint;
      
      private static var counter:uint;
      
      private static var §2!F§:Vector.<§try §>;
      
      private static var §,"z§:§try §;
       
      
      public var §0!j§:Number;
      
      public var §,#v§:Point;
      
      public function §try §()
      {
         super();
      }
      
      public static function init(param1:uint, param2:uint) : void
      {
         var _loc4_:§try § = null;
         §2!r§ = param1;
         §?!8§ = param2;
         counter = param1;
         §2!F§ = new Vector.<§try §>(§2!r§);
         var _loc3_:uint = param1;
         while(--_loc3_ > -1)
         {
            (_loc4_ = new §try §()).§,#v§ = new Point();
            §2!F§[_loc3_] = _loc4_;
         }
      }
      
      public static function getObject() : §try §
      {
         var _loc2_:§try § = null;
         if(counter > 0)
         {
            return §,"z§ = §2!F§[--counter];
         }
         var _loc1_:uint = §?!8§;
         while(--_loc1_ > -1)
         {
            _loc2_ = new §try §();
            _loc2_.§,#v§ = new Point();
            §2!F§.unshift(_loc2_);
         }
         counter = §?!8§;
         return getObject();
      }
      
      public static function § "=§(param1:§try §) : void
      {
         var _loc2_:* = counter++;
         §2!F§[_loc2_] = param1;
      }
      
      public static function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§try § = null;
         if(§2!F§)
         {
            _loc1_ = 0;
            while(_loc1_ < §2!F§.length)
            {
               _loc2_ = §2!F§[_loc1_];
               _loc2_ = null;
               _loc1_++;
            }
         }
         §2!F§ = null;
         §,"z§ = null;
      }
   }
}
