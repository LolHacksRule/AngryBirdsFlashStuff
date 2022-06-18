package §'6§
{
   import § N§.§]M§;
   import §`n§.§#H§;
   import flash.utils.Dictionary;
   
   public class §[W§
   {
      
      private static var §]y§:Array = [];
      
      private static var §`!M§:Dictionary = new Dictionary();
       
      
      public function §[W§()
      {
         super();
      }
      
      public static function §+!N§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§4!;§ = null;
         for(_loc2_ in param1)
         {
            if(!§`!M§[_loc2_])
            {
               _loc3_ = new §4!;§(param1[_loc2_],_loc2_);
               §]M§.log("Initializing cutScene: " + _loc2_);
               §`!M§[_loc2_] = _loc3_;
               if(§]y§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§<p§ = §4!;§.§3R§;
               }
            }
         }
      }
      
      public static function §5!>§(param1:String, param2:§#H§) : §4!;§
      {
         var _loc3_:§4!;§ = §`!M§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §"!H§(param1:String) : §4!;§
      {
         var _loc2_:§4!;§ = §`!M§[param1];
         if(_loc2_ && §]y§.indexOf(param1))
         {
            _loc2_.§<p§ = §4!;§.§3R§;
         }
         return _loc2_;
      }
      
      public static function §;v§(param1:String) : void
      {
         if(§]y§.indexOf(param1) < 0)
         {
            §]y§.push(param1);
         }
      }
   }
}
