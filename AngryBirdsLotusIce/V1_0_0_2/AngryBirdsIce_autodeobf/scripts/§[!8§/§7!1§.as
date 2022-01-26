package §[!8§
{
   import §&V§.§,w§;
   import §'m§.§^S§;
   import flash.utils.Dictionary;
   
   public class §7!1§
   {
      
      private static var §2r§:Array = [];
      
      private static var §?S§:Dictionary = new Dictionary();
       
      
      public function §7!1§()
      {
         super();
      }
      
      public static function §=q§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§'[§ = null;
         for(_loc2_ in param1)
         {
            if(!§?S§[_loc2_])
            {
               _loc3_ = new §'[§(param1[_loc2_],_loc2_);
               §^S§.log("Initializing cutScene: " + _loc2_);
               §?S§[_loc2_] = _loc3_;
               if(§2r§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§!s§ = §'[§.§&!!§;
               }
            }
         }
      }
      
      public static function §4!C§(param1:String, param2:§,w§) : §'[§
      {
         var _loc3_:§'[§ = §?S§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §#$§(param1:String) : §'[§
      {
         var _loc2_:§'[§ = §?S§[param1];
         if(_loc2_ && §2r§.indexOf(param1))
         {
            _loc2_.§!s§ = §'[§.§&!!§;
         }
         return _loc2_;
      }
      
      public static function §%B§(param1:String) : void
      {
         if(§2r§.indexOf(param1) < 0)
         {
            §2r§.push(param1);
         }
      }
   }
}
