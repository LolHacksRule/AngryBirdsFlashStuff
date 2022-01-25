package §%!@§
{
   import §+N§.§``§;
   import §<!!§.§-"§;
   import flash.utils.Dictionary;
   
   public class §17§
   {
      
      private static var §0h§:Array = [];
      
      private static var §,%§:Dictionary = new Dictionary();
       
      
      public function §17§()
      {
         super();
      }
      
      public static function §?D§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§+!^§ = null;
         for(_loc2_ in param1)
         {
            if(!§,%§[_loc2_])
            {
               _loc3_ = new §+!^§(param1[_loc2_],_loc2_);
               §-"§.log("Initializing cutScene: " + _loc2_);
               §,%§[_loc2_] = _loc3_;
               if(§0h§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§=[§ = §+!^§.§!!c§;
               }
            }
         }
      }
      
      public static function §[!?§(param1:String, param2:§``§) : §+!^§
      {
         var _loc3_:§+!^§ = §,%§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §0K§(param1:String) : §+!^§
      {
         var _loc2_:§+!^§ = §,%§[param1];
         if(_loc2_ && §0h§.indexOf(param1))
         {
            _loc2_.§=[§ = §+!^§.§!!c§;
         }
         return _loc2_;
      }
      
      public static function §70§(param1:String) : void
      {
         if(§0h§.indexOf(param1) < 0)
         {
            §0h§.push(param1);
         }
      }
   }
}
