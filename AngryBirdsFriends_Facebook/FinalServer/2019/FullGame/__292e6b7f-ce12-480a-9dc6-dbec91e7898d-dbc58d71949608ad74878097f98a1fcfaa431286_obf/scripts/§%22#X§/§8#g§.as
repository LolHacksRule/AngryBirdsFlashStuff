package §"#X§
{
   import §^"G§.§2+§;
   import flash.utils.Dictionary;
   
   public class §8#g§
   {
      
      private static var §2"2§:Dictionary;
      
      private static var §`!3§:Vector.<§"5§>;
      
      private static var §,$§:Vector.<static>;
       
      
      public function §8#g§()
      {
         super();
      }
      
      public static function §<U§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§"5§ = null;
         §2"2§ = new Dictionary();
         §`!3§ = new Vector.<§"5§>();
         for each(_loc2_ in param1)
         {
            _loc3_ = §"5§.§"!U§(_loc2_);
            §2"2§[_loc2_.uid] = _loc3_;
            §`!3§.push(_loc3_);
         }
      }
      
      public static function §1!H§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §,$§ = new Vector.<static>();
         for each(_loc2_ in param1)
         {
            §,$§.push(static.§"!U§(_loc2_));
         }
      }
      
      public static function §4"-§() : Vector.<§"5§>
      {
         return §`!3§;
      }
      
      public static function §5!9§() : Vector.<static>
      {
         var _loc2_:static = null;
         var _loc1_:Vector.<static> = new Vector.<static>();
         for each(_loc2_ in §,$§)
         {
            if(!§#Y§(_loc2_.userID))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §#Y§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in §2+§.§4"S§)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §^!O§(param1:String) : §"5§
      {
         if(§2"2§[param1])
         {
            return §2"2§[param1];
         }
         return null;
      }
      
      public static function §]$!§() : int
      {
         return !!§`!3§ ? int(§`!3§.length) : 0;
      }
   }
}
