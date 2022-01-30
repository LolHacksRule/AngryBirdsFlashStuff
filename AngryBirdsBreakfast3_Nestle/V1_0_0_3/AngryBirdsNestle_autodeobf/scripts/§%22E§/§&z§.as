package §"E§
{
   import §-!F§.§^!k§;
   import §6!?§.§`!O§;
   import §=!7§.§1!7§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §&z§
   {
      
      private static var §!H§:Array = [];
      
      private static var §>S§:§^!k§ = new §^!k§();
      
      private static var §,x§:Dictionary = new Dictionary();
       
      
      public function §&z§()
      {
         super();
      }
      
      public static function §>!p§(param1:String, param2:ByteArray) : void
      {
         §>S§[param1] = param2;
      }
      
      public static function §<O§(param1:String) : ByteArray
      {
         return §>S§[param1];
      }
      
      public static function §9T§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§^!u§ = null;
         for(_loc2_ in param1)
         {
            if(!§,x§[_loc2_])
            {
               _loc3_ = new §^!u§(param1[_loc2_],_loc2_);
               §1!7§.log("Initializing cutScene: " + _loc2_);
               §,x§[_loc2_] = _loc3_;
               if(§!H§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§>v§ = §^!u§.§80§;
               }
            }
         }
      }
      
      public static function §=!S§(param1:String, param2:§`!O§) : §^!u§
      {
         var _loc3_:§^!u§ = §,x§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §^!u§
      {
         var _loc2_:§^!u§ = §,x§[param1];
         if(_loc2_ && §!H§.indexOf(param1))
         {
            _loc2_.§>v§ = §^!u§.§80§;
         }
         return _loc2_;
      }
      
      public static function §;Z§(param1:String) : void
      {
         if(§!H§.indexOf(param1) < 0)
         {
            §!H§.push(param1);
         }
      }
   }
}
