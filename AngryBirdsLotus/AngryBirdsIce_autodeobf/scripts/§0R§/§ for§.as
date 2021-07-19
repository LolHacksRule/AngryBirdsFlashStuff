package §0R§
{
   import §1n§.§5#§;
   import §;8§.§3f§;
   import flash.utils.Dictionary;
   
   public class § for§
   {
      
      private static var §<!'§:Array = [];
      
      private static var §]]§:Dictionary = new Dictionary();
       
      
      public function § for§()
      {
         super();
      }
      
      public static function §-x§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§;g§ = null;
         for(_loc2_ in param1)
         {
            if(!§]]§[_loc2_])
            {
               _loc3_ = new §;g§(param1[_loc2_],_loc2_);
               §3f§.log("Initializing cutScene: " + _loc2_);
               §]]§[_loc2_] = _loc3_;
               if(§<!'§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§?g§ = §;g§.§%Z§;
               }
            }
         }
      }
      
      public static function §>+§(param1:String, param2:§5#§) : §;g§
      {
         var _loc3_:§;g§ = §]]§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §1!2§(param1:String) : §;g§
      {
         var _loc2_:§;g§ = §]]§[param1];
         if(_loc2_ && §<!'§.indexOf(param1))
         {
            _loc2_.§?g§ = §;g§.§%Z§;
         }
         return _loc2_;
      }
      
      public static function §@!1§(param1:String) : void
      {
         if(§<!'§.indexOf(param1) < 0)
         {
            §<!'§.push(param1);
         }
      }
   }
}
