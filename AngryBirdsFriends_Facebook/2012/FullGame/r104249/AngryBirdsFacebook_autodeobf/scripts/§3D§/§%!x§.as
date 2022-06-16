package §3D§
{
   import §#S§.§?!?§;
   import §%!'§.§5!;§;
   import §[x§.§%3§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §%!x§
   {
      
      private static var §>T§:Array = [];
      
      private static var §1"E§:§5!;§ = new §5!;§();
      
      private static var set:Dictionary = new Dictionary();
       
      
      public function §%!x§()
      {
         super();
      }
      
      public static function §&!9§(param1:String, param2:ByteArray) : void
      {
         §1"E§[param1] = param2;
      }
      
      public static function §`!9§(param1:String) : ByteArray
      {
         return §1"E§[param1];
      }
      
      public static function §#$§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§8"A§ = null;
         for(_loc2_ in param1)
         {
            if(!set[_loc2_])
            {
               _loc3_ = new §8"A§(param1[_loc2_],_loc2_);
               §%3§.log("Initializing cutScene: " + _loc2_);
               set[_loc2_] = _loc3_;
               if(§>T§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§%G§ = §8"A§.§#! §;
               }
            }
         }
      }
      
      public static function §9"A§(param1:String, param2:§?!?§) : §8"A§
      {
         var _loc3_:§8"A§ = set[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §&!i§(param1:String) : §8"A§
      {
         var _loc2_:§8"A§ = set[param1];
         if(_loc2_ && §>T§.indexOf(param1))
         {
            _loc2_.§%G§ = §8"A§.§#! §;
         }
         return _loc2_;
      }
      
      public static function §<!x§(param1:String) : void
      {
         if(§>T§.indexOf(param1) < 0)
         {
            §>T§.push(param1);
         }
      }
   }
}
