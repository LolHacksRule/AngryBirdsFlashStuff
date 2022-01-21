package §[>§
{
   import § !%§.§7!>§;
   import §5K§.§[C§;
   import flash.utils.Dictionary;
   
   public class §@n§
   {
      
      private static var §!!X§:Array = [];
      
      private static var §8p§:Dictionary = new Dictionary();
       
      
      public function §@n§()
      {
         super();
      }
      
      public static function §#-§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§[!o§ = null;
         for(_loc2_ in param1)
         {
            if(!§8p§[_loc2_])
            {
               _loc3_ = new §[!o§(param1[_loc2_],_loc2_);
               §[C§.log("Initializing cutScene: " + _loc2_);
               §8p§[_loc2_] = _loc3_;
               if(§!!X§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§,c§ = §[!o§.§94§;
               }
            }
         }
      }
      
      public static function §0T§(param1:String, param2:§7!>§) : §[!o§
      {
         var _loc3_:§[!o§ = §8p§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §<!f§(param1:String) : §[!o§
      {
         var _loc2_:§[!o§ = §8p§[param1];
         if(_loc2_ && §!!X§.indexOf(param1))
         {
            _loc2_.§,c§ = §[!o§.§94§;
         }
         return _loc2_;
      }
      
      public static function §!2§(param1:String) : void
      {
         if(§!!X§.indexOf(param1) < 0)
         {
            §!!X§.push(param1);
         }
      }
   }
}
