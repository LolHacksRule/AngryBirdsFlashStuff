package §<c§
{
   import §6!Q§.§7!7§;
   import §8r§.§@V§;
   import flash.utils.Dictionary;
   
   public class §4!9§
   {
      
      private static var §6!,§:Array = [];
      
      private static var §^!C§:Dictionary = new Dictionary();
       
      
      public function §4!9§()
      {
         super();
      }
      
      public static function §1H§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§'!d§ = null;
         for(_loc2_ in param1)
         {
            if(!§^!C§[_loc2_])
            {
               _loc3_ = new §'!d§(param1[_loc2_],_loc2_);
               §7!7§.log("Initializing cutScene: " + _loc2_);
               §^!C§[_loc2_] = _loc3_;
               if(§6!,§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§6@§ = §'!d§.§48§;
               }
            }
         }
      }
      
      public static function §=k§(param1:String, param2:§@V§) : §'!d§
      {
         var _loc3_:§'!d§ = §^!C§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §#!>§(param1:String) : §'!d§
      {
         var _loc2_:§'!d§ = §^!C§[param1];
         if(_loc2_ && §6!,§.indexOf(param1))
         {
            _loc2_.§6@§ = §'!d§.§48§;
         }
         return _loc2_;
      }
      
      public static function §@!a§(param1:String) : void
      {
         if(§6!,§.indexOf(param1) < 0)
         {
            §6!,§.push(param1);
         }
      }
   }
}
