package §9!7§
{
   import §5`§.§?y§;
   import §>K§.§9X§;
   import flash.utils.Dictionary;
   
   public class §?U§
   {
      
      private static var §`!B§:Array = [];
      
      private static var §!y§:Dictionary = new Dictionary();
       
      
      public function §?U§()
      {
         super();
      }
      
      public static function §;%§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§ !A§ = null;
         for(_loc2_ in param1)
         {
            if(!§!y§[_loc2_])
            {
               _loc3_ = new § !A§(param1[_loc2_],_loc2_);
               §9X§.log("Initializing cutScene: " + _loc2_);
               §!y§[_loc2_] = _loc3_;
               if(§`!B§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§+g§ = § !A§.§!1§;
               }
            }
         }
      }
      
      public static function §var §(param1:String, param2:§?y§) : § !A§
      {
         var _loc3_:§ !A§ = §!y§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §&n§(param1:String) : § !A§
      {
         var _loc2_:§ !A§ = §!y§[param1];
         if(_loc2_ && §`!B§.indexOf(param1))
         {
            _loc2_.§+g§ = § !A§.§!1§;
         }
         return _loc2_;
      }
      
      public static function §try §(param1:String) : void
      {
         if(§`!B§.indexOf(param1) < 0)
         {
            §`!B§.push(param1);
         }
      }
   }
}
