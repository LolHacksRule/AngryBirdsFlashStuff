package §4A§
{
   import §""<§.§#N§;
   import §'#§.§?u§;
   import §8o§.§5"%§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §1!d§
   {
      
      private static var §1!+§:Array = [];
      
      private static var §'-§:§?u§ = new §?u§();
      
      private static var §;t§:Dictionary = new Dictionary();
       
      
      public function §1!d§()
      {
         super();
      }
      
      public static function §+!f§(param1:String, param2:ByteArray) : void
      {
         §'-§[param1] = param2;
      }
      
      public static function §!!5§(param1:String) : ByteArray
      {
         return §'-§[param1];
      }
      
      public static function §%""§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§ j§ = null;
         for(_loc2_ in param1)
         {
            if(!§;t§[_loc2_])
            {
               _loc3_ = new § j§(param1[_loc2_],_loc2_);
               §#N§.log("Initializing cutScene: " + _loc2_);
               §;t§[_loc2_] = _loc3_;
               if(§1!+§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§3!F§ = § j§.§7Y§;
               }
            }
         }
      }
      
      public static function §%!x§(param1:String, param2:§5"%§) : § j§
      {
         var _loc3_:§ j§ = §;t§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : § j§
      {
         var _loc2_:§ j§ = §;t§[param1];
         if(_loc2_ && §1!+§.indexOf(param1))
         {
            _loc2_.§3!F§ = § j§.§7Y§;
         }
         return _loc2_;
      }
      
      public static function §'!8§(param1:String) : void
      {
         if(§1!+§.indexOf(param1) < 0)
         {
            §1!+§.push(param1);
         }
      }
   }
}
