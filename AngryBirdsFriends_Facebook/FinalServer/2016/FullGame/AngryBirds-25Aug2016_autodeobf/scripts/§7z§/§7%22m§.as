package §7z§
{
   import §0#d§.§<#u§;
   import flash.utils.Dictionary;
   
   public class §7"m§
   {
      
      private static var §#"%§:Dictionary;
      
      private static var §9#1§:Vector.<§2"U§>;
      
      private static var §&#_§:Vector.<§[$,§>;
       
      
      public function §7"m§()
      {
         super();
      }
      
      public static function §="0§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2"U§ = null;
         §#"%§ = new Dictionary();
         §9#1§ = new Vector.<§2"U§>();
         for each(_loc2_ in param1)
         {
            _loc3_ = §2"U§.§>!§(_loc2_);
            §#"%§[_loc2_.uid] = _loc3_;
            §9#1§.push(_loc3_);
         }
      }
      
      public static function §18§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §&#_§ = new Vector.<§[$,§>();
         for each(_loc2_ in param1)
         {
            §&#_§.push(§[$,§.§>!§(_loc2_));
         }
      }
      
      public static function §=#p§() : Vector.<§2"U§>
      {
         return §9#1§;
      }
      
      public static function §6">§() : Vector.<§[$,§>
      {
         var _loc2_:§[$,§ = null;
         var _loc1_:Vector.<§[$,§> = new Vector.<§[$,§>();
         for each(_loc2_ in §&#_§)
         {
            if(!§&$!§(_loc2_.userID))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §&$!§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in §<#u§.§>!K§)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §;#F§(param1:String) : §2"U§
      {
         if(§#"%§[param1])
         {
            return §#"%§[param1];
         }
         return null;
      }
      
      public static function §3#s§() : int
      {
         return !!§9#1§ ? int(§9#1§.length) : 0;
      }
   }
}
