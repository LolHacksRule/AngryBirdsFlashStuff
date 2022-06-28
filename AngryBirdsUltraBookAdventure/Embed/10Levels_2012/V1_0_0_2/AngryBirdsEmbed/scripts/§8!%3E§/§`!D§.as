package §8!>§
{
   import §'k§.§ >§;
   import §+!"§.§5!<§;
   import flash.utils.Dictionary;
   
   public class §`!D§
   {
      
      private static var § S§:Array = [];
      
      private static var §^=§:Dictionary = new Dictionary();
       
      
      public function §`!D§()
      {
         super();
      }
      
      public static function §7G§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§=!+§ = null;
         for(_loc2_ in param1)
         {
            if(!§^=§[_loc2_])
            {
               _loc3_ = new §=!+§(param1[_loc2_],_loc2_);
               §5!<§.log("Initializing cutScene: " + _loc2_);
               §^=§[_loc2_] = _loc3_;
               if(§ S§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§!K§ = §=!+§.§5_§;
               }
            }
         }
      }
      
      public static function §1!3§(param1:String, param2:§ >§) : §=!+§
      {
         var _loc3_:§=!+§ = §^=§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §0!9§(param1:String) : §=!+§
      {
         var _loc2_:§=!+§ = §^=§[param1];
         if(_loc2_ && § S§.indexOf(param1))
         {
            _loc2_.§!K§ = §=!+§.§5_§;
         }
         return _loc2_;
      }
      
      public static function §6u§(param1:String) : void
      {
         if(§ S§.indexOf(param1) < 0)
         {
            § S§.push(param1);
         }
      }
   }
}
