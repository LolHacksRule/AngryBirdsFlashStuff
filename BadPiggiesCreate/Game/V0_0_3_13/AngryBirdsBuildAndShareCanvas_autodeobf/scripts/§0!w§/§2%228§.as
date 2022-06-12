package §0!w§
{
   import §&W§.§7L§;
   import §`"2§.§6!,§;
   import flash.utils.Dictionary;
   
   public class §2"8§
   {
      
      private static var §["7§:Array = [];
      
      private static var §<"%§:Dictionary = new Dictionary();
       
      
      public function §2"8§()
      {
         super();
      }
      
      public static function §,v§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§ 2§ = null;
         for(_loc2_ in param1)
         {
            if(!§<"%§[_loc2_])
            {
               _loc3_ = new § 2§(param1[_loc2_],_loc2_);
               §7L§.log("Initializing cutScene: " + _loc2_);
               §<"%§[_loc2_] = _loc3_;
               if(§["7§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§!g§ = § 2§.§%u§;
               }
            }
         }
      }
      
      public static function §[z§(param1:String, param2:§6!,§) : § 2§
      {
         var _loc3_:§ 2§ = §<"%§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §2c§(param1:String) : § 2§
      {
         var _loc2_:§ 2§ = §<"%§[param1];
         if(_loc2_ && §["7§.indexOf(param1))
         {
            _loc2_.§!g§ = § 2§.§%u§;
         }
         return _loc2_;
      }
      
      public static function §=C§(param1:String) : void
      {
         if(§["7§.indexOf(param1) < 0)
         {
            §["7§.push(param1);
         }
      }
   }
}
