package §,%§
{
   import §"p§.§@8§;
   import §@!-§.§3"1§;
   import flash.utils.Dictionary;
   
   public class §6G§
   {
      
      private static var §5"?§:Array = [];
      
      private static var §="%§:Dictionary = new Dictionary();
       
      
      public function §6G§()
      {
         super();
      }
      
      public static function §,+§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§-!4§ = null;
         for(_loc2_ in param1)
         {
            if(!§="%§[_loc2_])
            {
               _loc3_ = new §-!4§(param1[_loc2_],_loc2_);
               §@8§.log("Initializing cutScene: " + _loc2_);
               §="%§[_loc2_] = _loc3_;
               if(§5"?§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§4w§ = §-!4§.§>!n§;
               }
            }
         }
      }
      
      public static function §,l§(param1:String, param2:§3"1§) : §-!4§
      {
         var _loc3_:§-!4§ = §="%§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §?";§(param1:String) : §-!4§
      {
         var _loc2_:§-!4§ = §="%§[param1];
         if(_loc2_ && §5"?§.indexOf(param1))
         {
            _loc2_.§4w§ = §-!4§.§>!n§;
         }
         return _loc2_;
      }
      
      public static function §]!§(param1:String) : void
      {
         if(§5"?§.indexOf(param1) < 0)
         {
            §5"?§.push(param1);
         }
      }
   }
}
