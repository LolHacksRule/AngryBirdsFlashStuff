package §4!3§
{
   import §3v§.§1a§;
   import §6u§.§3W§;
   import flash.utils.Dictionary;
   
   public class §'!@§
   {
      
      private static var §9n§:Array = [];
      
      private static var § !!§:Dictionary = new Dictionary();
       
      
      public function §'!@§()
      {
         super();
      }
      
      public static function §+g§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§+!D§ = null;
         for(_loc2_ in param1)
         {
            if(!§ !!§[_loc2_])
            {
               _loc3_ = new §+!D§(param1[_loc2_],_loc2_);
               §1a§.log("Initializing cutScene: " + _loc2_);
               § !!§[_loc2_] = _loc3_;
               if(§9n§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§[w§ = §+!D§.§+!B§;
               }
            }
         }
      }
      
      public static function §<_§(param1:String, param2:§3W§) : §+!D§
      {
         var _loc3_:§+!D§ = § !!§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §3y§(param1:String) : §+!D§
      {
         var _loc2_:§+!D§ = § !!§[param1];
         if(_loc2_ && §9n§.indexOf(param1))
         {
            _loc2_.§[w§ = §+!D§.§+!B§;
         }
         return _loc2_;
      }
      
      public static function §^!2§(param1:String) : void
      {
         if(§9n§.indexOf(param1) < 0)
         {
            §9n§.push(param1);
         }
      }
   }
}
