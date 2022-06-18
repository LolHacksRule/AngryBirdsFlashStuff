package §&-§
{
   import §7!P§.§-3§;
   import §=0§.§>O§;
   import flash.utils.Dictionary;
   
   public class §=B§
   {
      
      private static var §&!6§:Array = [];
      
      private static var §,n§:Dictionary = new Dictionary();
       
      
      public function §=B§()
      {
         super();
      }
      
      public static function §7M§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§3!,§ = null;
         for(_loc2_ in param1)
         {
            if(!§,n§[_loc2_])
            {
               _loc3_ = new §3!,§(param1[_loc2_],_loc2_);
               §-3§.log("Initializing cutScene: " + _loc2_);
               §,n§[_loc2_] = _loc3_;
               if(§&!6§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§8!4§ = §3!,§.§,_§;
               }
            }
         }
      }
      
      public static function §98§(param1:String, param2:§>O§) : §3!,§
      {
         var _loc3_:§3!,§ = §,n§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §9Z§(param1:String) : §3!,§
      {
         var _loc2_:§3!,§ = §,n§[param1];
         if(_loc2_ && §&!6§.indexOf(param1))
         {
            _loc2_.§8!4§ = §3!,§.§,_§;
         }
         return _loc2_;
      }
      
      public static function §,!B§(param1:String) : void
      {
         if(§&!6§.indexOf(param1) < 0)
         {
            §&!6§.push(param1);
         }
      }
   }
}
