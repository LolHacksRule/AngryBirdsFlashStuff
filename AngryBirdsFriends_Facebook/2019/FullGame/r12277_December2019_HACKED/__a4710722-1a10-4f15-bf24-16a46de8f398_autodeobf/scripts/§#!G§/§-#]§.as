package §#!G§
{
   import §?_§.§9! §;
   import flash.utils.Dictionary;
   
   public class §-#]§
   {
      
      private static var §+d§:Dictionary;
      
      private static var §[#3§:Vector.<§9$§>;
      
      private static var §@!%§:Vector.<§?$,§>;
       
      
      public function §-#]§()
      {
         super();
      }
      
      public static function §1#X§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§9$§ = null;
         §+d§ = new Dictionary();
         §[#3§ = new Vector.<§9$§>();
         for each(_loc2_ in param1)
         {
            _loc3_ = §9$§.§5!I§(_loc2_);
            §+d§[_loc2_.uid] = _loc3_;
            §[#3§.push(_loc3_);
         }
      }
      
      public static function §5!;§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §@!%§ = new Vector.<§?$,§>();
         for each(_loc2_ in param1)
         {
            §@!%§.push(§?$,§.§5!I§(_loc2_));
         }
      }
      
      public static function §0#9§() : Vector.<§9$§>
      {
         return §[#3§;
      }
      
      public static function §0$%§() : Vector.<§?$,§>
      {
         var _loc2_:§?$,§ = null;
         var _loc1_:Vector.<§?$,§> = new Vector.<§?$,§>();
         for each(_loc2_ in §@!%§)
         {
            if(!§6"6§(_loc2_.userID))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §6"6§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in §9! §.§`!H§)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §0B§(param1:String) : §9$§
      {
         if(§+d§[param1])
         {
            return §+d§[param1];
         }
         return null;
      }
      
      public static function §7#'§() : int
      {
         return !!§[#3§ ? int(§[#3§.length) : 0;
      }
   }
}
