package §`",§
{
   import §6]§.§,"0§;
   import §;"7§.§="<§;
   import flash.utils.Dictionary;
   
   public class §2M§
   {
      
      private static var §8">§:Array = [];
      
      private static var §`"&§:Dictionary = new Dictionary();
       
      
      public function §2M§()
      {
         super();
      }
      
      public static function §[!R§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§37§ = null;
         for(_loc2_ in param1)
         {
            if(!§`"&§[_loc2_])
            {
               _loc3_ = new §37§(param1[_loc2_],_loc2_);
               §,"0§.log("Initializing cutScene: " + _loc2_);
               §`"&§[_loc2_] = _loc3_;
               if(§8">§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§6! § = §37§.§"!a§;
               }
            }
         }
      }
      
      public static function §1!I§(param1:String, param2:§="<§) : §37§
      {
         var _loc3_:§37§ = §`"&§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §#!F§(param1:String) : §37§
      {
         var _loc2_:§37§ = §`"&§[param1];
         if(_loc2_ && §8">§.indexOf(param1))
         {
            _loc2_.§6! § = §37§.§"!a§;
         }
         return _loc2_;
      }
      
      public static function §]!e§(param1:String) : void
      {
         if(§8">§.indexOf(param1) < 0)
         {
            §8">§.push(param1);
         }
      }
   }
}
