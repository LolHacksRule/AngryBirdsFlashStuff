package §9L§
{
   import §5!l§.§ !D§;
   import §=<§.§1+§;
   import flash.utils.Dictionary;
   
   public class §;!K§
   {
      
      private static var §`!+§:Array = [];
      
      private static var §!!X§:Dictionary = new Dictionary();
       
      
      public function §;!K§()
      {
         super();
      }
      
      public static function §+!'§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§8!V§ = null;
         for(_loc2_ in param1)
         {
            if(!§!!X§[_loc2_])
            {
               _loc3_ = new §8!V§(param1[_loc2_],_loc2_);
               §1+§.log("Initializing cutScene: " + _loc2_);
               §!!X§[_loc2_] = _loc3_;
               if(§`!+§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§1!9§ = §8!V§.§0!k§;
               }
            }
         }
      }
      
      public static function §[@§(param1:String, param2:§ !D§) : §8!V§
      {
         var _loc3_:§8!V§ = §!!X§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §?!U§(param1:String) : §8!V§
      {
         var _loc2_:§8!V§ = §!!X§[param1];
         if(_loc2_ && §`!+§.indexOf(param1))
         {
            _loc2_.§1!9§ = §8!V§.§0!k§;
         }
         return _loc2_;
      }
      
      public static function §+v§(param1:String) : void
      {
         if(§`!+§.indexOf(param1) < 0)
         {
            §`!+§.push(param1);
         }
      }
   }
}
