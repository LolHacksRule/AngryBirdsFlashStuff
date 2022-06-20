package §+_§
{
   import §#"3§.§4!h§;
   import §2E§.§&#a§;
   import §9#M§.§%"=§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §^"Q§
   {
      
      private static var §%!1§:Array = [];
      
      private static var §%s§:§&#a§ = new §&#a§();
      
      private static var §>"4§:Dictionary = new Dictionary();
       
      
      public function §^"Q§()
      {
         super();
      }
      
      public static function §&!c§(param1:String, param2:ByteArray) : void
      {
         §%s§[param1] = param2;
      }
      
      public static function §=!"§(param1:String) : ByteArray
      {
         return §%s§[param1];
      }
      
      public static function §1#_§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§=$C§ = null;
         for(_loc2_ in param1)
         {
            if(!§>"4§[_loc2_])
            {
               _loc3_ = new §=$C§(param1[_loc2_],_loc2_);
               §4!h§.log("Initializing cutScene: " + _loc2_);
               §>"4§[_loc2_] = _loc3_;
               if(§%!1§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.cutSceneType = §=$C§.§,"b§;
               }
            }
         }
      }
      
      public static function §@u§(param1:String, param2:§%"=§) : §=$C§
      {
         var _loc3_:§=$C§ = §>"4§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §=$C§
      {
         var _loc2_:§=$C§ = §>"4§[param1];
         if(_loc2_ && §%!1§.indexOf(param1))
         {
            _loc2_.cutSceneType = §=$C§.§,"b§;
         }
         return _loc2_;
      }
      
      public static function §'"U§(param1:String) : Boolean
      {
         return §%!1§.indexOf(param1) >= 0;
      }
      
      public static function §3G§(param1:String) : void
      {
         if(§%!1§.indexOf(param1) < 0)
         {
            §%!1§.push(param1);
         }
      }
   }
}
