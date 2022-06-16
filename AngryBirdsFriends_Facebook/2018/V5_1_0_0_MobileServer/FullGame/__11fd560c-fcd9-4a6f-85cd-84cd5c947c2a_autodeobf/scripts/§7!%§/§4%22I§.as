package §7!%§
{
   import §3r§.§]!4§;
   import flash.utils.Dictionary;
   
   public class §4"I§
   {
      
      private static var §"n§:Dictionary;
      
      private static var §="3§:Vector.<§,^§>;
      
      private static var §#"c§:Vector.<§&#k§>;
       
      
      public function §4"I§()
      {
         super();
      }
      
      public static function §]>§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§,^§ = null;
         §"n§ = new Dictionary();
         §="3§ = new Vector.<§,^§>();
         for each(_loc2_ in param1)
         {
            _loc3_ = §,^§.§+!@§(_loc2_);
            §"n§[_loc2_.uid] = _loc3_;
            §="3§.push(_loc3_);
         }
      }
      
      public static function §6"]§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §#"c§ = new Vector.<§&#k§>();
         for each(_loc2_ in param1)
         {
            §#"c§.push(§&#k§.§+!@§(_loc2_));
         }
      }
      
      public static function §8"T§() : Vector.<§,^§>
      {
         return §="3§;
      }
      
      public static function §-!m§() : Vector.<§&#k§>
      {
         var _loc2_:§&#k§ = null;
         var _loc1_:Vector.<§&#k§> = new Vector.<§&#k§>();
         for each(_loc2_ in §#"c§)
         {
            if(!§`W§(_loc2_.userID))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §`W§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in §]!4§.§@#0§)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §2!K§(param1:String) : §,^§
      {
         if(§"n§[param1])
         {
            return §"n§[param1];
         }
         return null;
      }
      
      public static function §2"!§() : int
      {
         return !!§="3§ ? int(§="3§.length) : 0;
      }
   }
}
