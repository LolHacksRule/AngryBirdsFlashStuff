package §`!,§
{
   import §2!4§.§5T§;
   import §=g§.§@!L§;
   import flash.utils.Dictionary;
   
   public class §#!#§
   {
      
      private static var §1c§:Array = [];
      
      private static var §?P§:Dictionary = new Dictionary();
       
      
      public function §#!#§()
      {
         super();
      }
      
      public static function §<u§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§;W§ = null;
         for(_loc2_ in param1)
         {
            if(!§?P§[_loc2_])
            {
               _loc3_ = new §;W§(param1[_loc2_],_loc2_);
               §@!L§.log("Initializing cutScene: " + _loc2_);
               §?P§[_loc2_] = _loc3_;
               if(§1c§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§,4§ = §;W§.§1I§;
               }
            }
         }
      }
      
      public static function §;_§(param1:String, param2:§5T§) : §;W§
      {
         var _loc3_:§;W§ = §?P§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §"!#§(param1:String) : §;W§
      {
         var _loc2_:§;W§ = §?P§[param1];
         if(_loc2_ && §1c§.indexOf(param1))
         {
            _loc2_.§,4§ = §;W§.§1I§;
         }
         return _loc2_;
      }
      
      public static function §^! §(param1:String) : void
      {
         if(§1c§.indexOf(param1) < 0)
         {
            §1c§.push(param1);
         }
      }
   }
}
