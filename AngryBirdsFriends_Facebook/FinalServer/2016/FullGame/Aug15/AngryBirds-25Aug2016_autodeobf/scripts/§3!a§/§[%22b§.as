package §3!a§
{
   import §!x§.§4"d§;
   import §>!#§.§'"R§;
   import §@"§.§&!=§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §["b§
   {
      
      private static var §>#L§:Array = [];
      
      private static var §`"&§:§'"R§ = new §'"R§();
      
      private static var §9#y§:Dictionary = new Dictionary();
       
      
      public function §["b§()
      {
         super();
      }
      
      public static function §?!J§(param1:String, param2:ByteArray) : void
      {
         §`"&§[param1] = param2;
      }
      
      public static function §5!#§(param1:String) : ByteArray
      {
         return §`"&§[param1];
      }
      
      public static function §]5§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§#!-§ = null;
         for(_loc2_ in param1)
         {
            if(!§9#y§[_loc2_])
            {
               _loc3_ = new §#!-§(param1[_loc2_],_loc2_);
               §4"d§.log("Initializing cutScene: " + _loc2_);
               §9#y§[_loc2_] = _loc3_;
               if(§>#L§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.cutSceneType = §#!-§.§,#V§;
               }
            }
         }
      }
      
      public static function §5"o§(param1:String, param2:§&!=§) : §#!-§
      {
         var _loc3_:§#!-§ = §9#y§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §#!-§
      {
         var _loc2_:§#!-§ = §9#y§[param1];
         if(_loc2_ && §>#L§.indexOf(param1))
         {
            _loc2_.cutSceneType = §#!-§.§,#V§;
         }
         return _loc2_;
      }
      
      public static function §!!q§(param1:String) : Boolean
      {
         return §>#L§.indexOf(param1) >= 0;
      }
      
      public static function §^!o§(param1:String) : void
      {
         if(§>#L§.indexOf(param1) < 0)
         {
            §>#L§.push(param1);
         }
      }
   }
}
