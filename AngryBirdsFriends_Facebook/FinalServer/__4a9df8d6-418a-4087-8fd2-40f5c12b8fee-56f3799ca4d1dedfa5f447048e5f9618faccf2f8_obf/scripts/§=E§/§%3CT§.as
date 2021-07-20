package §=E§
{
   import §1"l§.§`""§;
   import flash.utils.Dictionary;
   
   public class §<T§
   {
      
      private static var §,"-§:Dictionary;
      
      private static var §0#T§:Vector.<§@u§>;
      
      private static var §]$"§:Vector.<§0"9§>;
       
      
      public function §<T§()
      {
         super();
      }
      
      public static function §`X§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§@u§ = null;
         §,"-§ = new Dictionary();
         §0#T§ = new Vector.<§@u§>();
         for each(_loc2_ in param1)
         {
            _loc3_ = §@u§.§5+§(_loc2_);
            §,"-§[_loc2_.uid] = _loc3_;
            §0#T§.push(_loc3_);
         }
      }
      
      public static function §%Q§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §]$"§ = new Vector.<§0"9§>();
         for each(_loc2_ in param1)
         {
            §]$"§.push(§0"9§.§5+§(_loc2_));
         }
      }
      
      public static function §8"5§() : Vector.<§@u§>
      {
         return §0#T§;
      }
      
      public static function §=$+§() : Vector.<§0"9§>
      {
         var _loc2_:§0"9§ = null;
         var _loc1_:Vector.<§0"9§> = new Vector.<§0"9§>();
         for each(_loc2_ in §]$"§)
         {
            if(!§'!"§(_loc2_.userID))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §'!"§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in §`""§.§!s§)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §<#§(param1:String) : §@u§
      {
         if(§,"-§[param1])
         {
            return §,"-§[param1];
         }
         return null;
      }
      
      public static function §7#v§() : int
      {
         return !!§0#T§ ? int(§0#T§.length) : 0;
      }
   }
}
