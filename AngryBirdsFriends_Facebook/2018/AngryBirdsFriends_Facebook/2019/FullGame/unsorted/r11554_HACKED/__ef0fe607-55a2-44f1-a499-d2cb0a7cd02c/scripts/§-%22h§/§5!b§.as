package §-"h§
{
   import §#M§.§<"c§;
   import flash.utils.Dictionary;
   
   public class §5!b§
   {
      
      private static var §^"a§:Dictionary;
      
      private static var §4"W§:Vector.<§8c§>;
      
      private static var §]!D§:Vector.<§2$;§>;
       
      
      public function §5!b§()
      {
         super();
      }
      
      public static function §;!#§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§8c§ = null;
         §^"a§ = new Dictionary();
         §4"W§ = new Vector.<§8c§>();
         for each(_loc2_ in param1)
         {
            _loc3_ = §8c§.§]"B§(_loc2_);
            §^"a§[_loc2_.uid] = _loc3_;
            §4"W§.push(_loc3_);
         }
      }
      
      public static function §@"<§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §]!D§ = new Vector.<§2$;§>();
         for each(_loc2_ in param1)
         {
            §]!D§.push(§2$;§.§]"B§(_loc2_));
         }
      }
      
      public static function §4`§() : Vector.<§8c§>
      {
         return §4"W§;
      }
      
      public static function §?"C§() : Vector.<§2$;§>
      {
         var _loc2_:§2$;§ = null;
         var _loc1_:Vector.<§2$;§> = new Vector.<§2$;§>();
         for each(_loc2_ in §]!D§)
         {
            if(!§"!$§(_loc2_.userID))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §"!$§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in §<"c§.§!$@§)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §8#'§(param1:String) : §8c§
      {
         if(§^"a§[param1])
         {
            return §^"a§[param1];
         }
         return null;
      }
      
      public static function §'!o§() : int
      {
         return !!§4"W§ ? int(§4"W§.length) : 0;
      }
   }
}
