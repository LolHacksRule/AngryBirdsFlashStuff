package §8$=§
{
   import §#"4§.§&r§;
   import §6"p§.§^"t§;
   import §7"T§.§#"^§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §4#=§
   {
      
      private static var §=$8§:Array = [];
      
      private static var §2!7§:§&r§ = new §&r§();
      
      private static var §7D§:Dictionary = new Dictionary();
       
      
      public function §4#=§()
      {
         super();
      }
      
      public static function §1N§(param1:String, param2:ByteArray) : void
      {
         §2!7§[param1] = param2;
      }
      
      public static function §'$@§(param1:String) : ByteArray
      {
         return §2!7§[param1];
      }
      
      public static function §&#x§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§=$7§ = null;
         for(_loc2_ in param1)
         {
            if(!§7D§[_loc2_])
            {
               _loc3_ = new §=$7§(param1[_loc2_],_loc2_);
               §^"t§.log("Initializing cutScene: " + _loc2_);
               §7D§[_loc2_] = _loc3_;
               if(§=$8§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.cutSceneType = §=$7§.§3"C§;
               }
            }
         }
      }
      
      public static function §[M§(param1:String, param2:§#"^§) : §=$7§
      {
         var _loc3_:§=$7§ = §7D§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §=$7§
      {
         var _loc2_:§=$7§ = §7D§[param1];
         if(_loc2_ && §=$8§.indexOf(param1))
         {
            _loc2_.cutSceneType = §=$7§.§3"C§;
         }
         return _loc2_;
      }
      
      public static function §66§(param1:String) : Boolean
      {
         return §=$8§.indexOf(param1) >= 0;
      }
      
      public static function §^$,§(param1:String) : void
      {
         if(§=$8§.indexOf(param1) < 0)
         {
            §=$8§.push(param1);
         }
      }
   }
}
