package §?_§
{
   import § !Y§.§[!%§;
   import §0N§.§2!@§;
   import §4&§.§,C§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §^"4§
   {
      
      private static var §"!_§:Array = [];
      
      private static var §<<§:§[!%§ = new §[!%§();
      
      private static var §<!U§:Dictionary = new Dictionary();
       
      
      public function §^"4§()
      {
         super();
      }
      
      public static function §7"+§(param1:String, param2:ByteArray) : void
      {
         §<<§[param1] = param2;
      }
      
      public static function §8!D§(param1:String) : ByteArray
      {
         return §<<§[param1];
      }
      
      public static function §#!3§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§>",§ = null;
         for(_loc2_ in param1)
         {
            if(!§<!U§[_loc2_])
            {
               _loc3_ = new §>",§(param1[_loc2_],_loc2_);
               §2!@§.log("Initializing cutScene: " + _loc2_);
               §<!U§[_loc2_] = _loc3_;
               if(§"!_§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§5"-§ = §>",§.§]!W§;
               }
            }
         }
      }
      
      public static function §]!b§(param1:String, param2:§,C§) : §>",§
      {
         var _loc3_:§>",§ = §<!U§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §>",§
      {
         var _loc2_:§>",§ = §<!U§[param1];
         if(_loc2_ && §"!_§.indexOf(param1))
         {
            _loc2_.§5"-§ = §>",§.§]!W§;
         }
         return _loc2_;
      }
      
      public static function §#!w§(param1:String) : void
      {
         if(§"!_§.indexOf(param1) < 0)
         {
            §"!_§.push(param1);
         }
      }
   }
}
