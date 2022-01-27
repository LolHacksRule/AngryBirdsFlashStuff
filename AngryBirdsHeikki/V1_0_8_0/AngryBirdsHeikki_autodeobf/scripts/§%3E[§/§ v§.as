package §>[§
{
   import § !3§.§!X§;
   import §]!C§.§0!d§;
   import flash.utils.Dictionary;
   
   public class § v§
   {
      
      private static var §"!+§:Array = [];
      
      private static var §;V§:Dictionary = new Dictionary();
       
      
      public function § v§()
      {
         super();
      }
      
      public static function §4?§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§^! § = null;
         for(_loc2_ in param1)
         {
            if(!§;V§[_loc2_])
            {
               _loc3_ = new §^! §(param1[_loc2_],_loc2_);
               §!X§.log("Initializing cutScene: " + _loc2_);
               §;V§[_loc2_] = _loc3_;
               if(§"!+§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§99§ = §^! §.§!i§;
               }
            }
         }
      }
      
      public static function §-C§(param1:String, param2:§0!d§) : §^! §
      {
         var _loc3_:§^! § = §;V§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §1Q§(param1:String) : §^! §
      {
         var _loc2_:§^! § = §;V§[param1];
         if(_loc2_ && §"!+§.indexOf(param1))
         {
            _loc2_.§99§ = §^! §.§!i§;
         }
         return _loc2_;
      }
      
      public static function §"!,§(param1:String) : void
      {
         if(§"!+§.indexOf(param1) < 0)
         {
            §"!+§.push(param1);
         }
      }
   }
}
