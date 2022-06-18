package §]#p§
{
   import §`!R§.§&"8§;
   import flash.utils.Dictionary;
   
   public class §%!?§
   {
      
      private static var §8O§:Dictionary;
      
      private static var §?!0§:Vector.<§4!J§>;
      
      private static var §1"!§:Vector.<§1#]§>;
       
      
      public function §%!?§()
      {
         super();
      }
      
      public static function §@#!§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§4!J§ = null;
         §8O§ = new Dictionary();
         §?!0§ = new Vector.<§4!J§>();
         for each(_loc2_ in param1)
         {
            _loc3_ = §4!J§.§2u§(_loc2_);
            §8O§[_loc2_.uid] = _loc3_;
            §?!0§.push(_loc3_);
         }
      }
      
      public static function §,#K§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §1"!§ = new Vector.<§1#]§>();
         for each(_loc2_ in param1)
         {
            §1"!§.push(§1#]§.§2u§(_loc2_));
         }
      }
      
      public static function §@!i§() : Vector.<§4!J§>
      {
         return §?!0§;
      }
      
      public static function §?!x§() : Vector.<§1#]§>
      {
         var _loc2_:§1#]§ = null;
         var _loc1_:Vector.<§1#]§> = new Vector.<§1#]§>();
         for each(_loc2_ in §1"!§)
         {
            if(!§<"t§(_loc2_.userID))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §<"t§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in §&"8§.§<#c§)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function § $;§(param1:String) : §4!J§
      {
         if(§8O§[param1])
         {
            return §8O§[param1];
         }
         return null;
      }
      
      public static function §7p§() : int
      {
         return !!§?!0§ ? int(§?!0§.length) : 0;
      }
   }
}
