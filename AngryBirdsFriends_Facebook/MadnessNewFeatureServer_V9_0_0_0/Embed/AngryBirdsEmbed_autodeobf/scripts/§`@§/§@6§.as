package §`@§
{
   import §#?§.§6!4§;
   import §'6§.§?!L§;
   import §3y§.§4!$§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §@6§
   {
      
      private static var §6v§:Array = [];
      
      private static var §-!E§:§4!$§ = new §4!$§();
      
      private static var §^]§:Dictionary = new Dictionary();
       
      
      public function §@6§()
      {
         super();
      }
      
      public static function §"m§(param1:String, param2:ByteArray) : void
      {
         §-!E§[param1] = param2;
      }
      
      public static function §?6§(param1:String) : ByteArray
      {
         return §-!E§[param1];
      }
      
      public static function §9c§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§#!G§ = null;
         for(_loc2_ in param1)
         {
            if(!§^]§[_loc2_])
            {
               _loc3_ = new §#!G§(param1[_loc2_],_loc2_);
               §?!L§.log("Initializing cutScene: " + _loc2_);
               §^]§[_loc2_] = _loc3_;
               if(§6v§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§<!G§ = §#!G§.§![§;
               }
            }
         }
      }
      
      public static function §?4§(param1:String, param2:§6!4§) : §#!G§
      {
         var _loc3_:§#!G§ = §^]§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §8z§(param1:String) : §#!G§
      {
         var _loc2_:§#!G§ = §^]§[param1];
         if(_loc2_ && §6v§.indexOf(param1))
         {
            _loc2_.§<!G§ = §#!G§.§![§;
         }
         return _loc2_;
      }
      
      public static function §,K§(param1:String) : void
      {
         if(§6v§.indexOf(param1) < 0)
         {
            §6v§.push(param1);
         }
      }
   }
}
