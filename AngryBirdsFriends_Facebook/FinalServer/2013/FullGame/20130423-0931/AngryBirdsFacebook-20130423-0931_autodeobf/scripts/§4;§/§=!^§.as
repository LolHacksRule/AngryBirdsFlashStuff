package §4;§
{
   import §+!c§.§;!=§;
   import §9@§.§4Z§;
   import §<T§.§`m§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §=!^§
   {
      
      private static var §+"?§:Array = [];
      
      private static var §3"T§:§4Z§ = new §4Z§();
      
      private static var §9"V§:Dictionary = new Dictionary();
       
      
      public function §=!^§()
      {
         super();
      }
      
      public static function §3!E§(param1:String, param2:ByteArray) : void
      {
         §3"T§[param1] = param2;
      }
      
      public static function §#A§(param1:String) : ByteArray
      {
         return §3"T§[param1];
      }
      
      public static function §[W§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§0!'§ = null;
         for(_loc2_ in param1)
         {
            if(!§9"V§[_loc2_])
            {
               _loc3_ = new §0!'§(param1[_loc2_],_loc2_);
               §;!=§.log("Initializing cutScene: " + _loc2_);
               §9"V§[_loc2_] = _loc3_;
               if(§+"?§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§'!G§ = §0!'§.§#!Y§;
               }
            }
         }
      }
      
      public static function final(param1:String, param2:§`m§) : §0!'§
      {
         var _loc3_:§0!'§ = §9"V§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §"!X§(param1:String) : §0!'§
      {
         var _loc2_:§0!'§ = §9"V§[param1];
         if(_loc2_ && §+"?§.indexOf(param1))
         {
            _loc2_.§'!G§ = §0!'§.§#!Y§;
         }
         return _loc2_;
      }
      
      public static function §=u§(param1:String) : void
      {
         if(§+"?§.indexOf(param1) < 0)
         {
            §+"?§.push(param1);
         }
      }
   }
}
