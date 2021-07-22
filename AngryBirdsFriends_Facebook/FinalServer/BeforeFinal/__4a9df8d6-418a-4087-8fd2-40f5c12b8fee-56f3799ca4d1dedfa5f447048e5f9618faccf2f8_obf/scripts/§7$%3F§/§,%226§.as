package §7$?§
{
   import flash.geom.Point;
   
   public class §,"6§
   {
      
      private static var §^$8§:uint;
      
      private static var §8#,§:uint;
      
      private static var counter:uint;
      
      private static var §'#^§:Vector.<§,"6§>;
      
      private static var §&"4§:§,"6§;
       
      
      public var §9J§:Number;
      
      public var §4E§:Point;
      
      public function §,"6§()
      {
         super();
      }
      
      public static function init(param1:uint, param2:uint) : void
      {
         var _loc4_:§,"6§ = null;
         §^$8§ = param1;
         §8#,§ = param2;
         counter = param1;
         §'#^§ = new Vector.<§,"6§>(§^$8§);
         var _loc3_:uint = param1;
         while(--_loc3_ > -1)
         {
            (_loc4_ = new §,"6§()).§4E§ = new Point();
            §'#^§[_loc3_] = _loc4_;
         }
      }
      
      public static function getObject() : §,"6§
      {
         var _loc2_:§,"6§ = null;
         if(counter > 0)
         {
            return §&"4§ = §'#^§[--counter];
         }
         var _loc1_:uint = §8#,§;
         while(--_loc1_ > -1)
         {
            _loc2_ = new §,"6§();
            _loc2_.§4E§ = new Point();
            §'#^§.unshift(_loc2_);
         }
         counter = §8#,§;
         return getObject();
      }
      
      public static function §#"2§(param1:§,"6§) : void
      {
         var _loc2_:* = counter++;
         §'#^§[_loc2_] = param1;
      }
      
      public static function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§,"6§ = null;
         if(§'#^§)
         {
            _loc1_ = 0;
            while(_loc1_ < §'#^§.length)
            {
               _loc2_ = §'#^§[_loc1_];
               _loc2_ = null;
               _loc1_++;
            }
         }
         §'#^§ = null;
         §&"4§ = null;
      }
   }
}
