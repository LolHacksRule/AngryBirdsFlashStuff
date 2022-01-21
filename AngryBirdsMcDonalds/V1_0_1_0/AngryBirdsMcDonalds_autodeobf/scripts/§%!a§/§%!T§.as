package §%!a§
{
   import §&[§.§&!m§;
   import §`!W§.§2v§;
   import flash.utils.Dictionary;
   
   public class §%!T§
   {
      
      private static var § null§:Array = [];
      
      private static var §1z§:Dictionary = new Dictionary();
       
      
      public function §%!T§()
      {
         super();
      }
      
      public static function §'!o§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§2!C§ = null;
         for(_loc2_ in param1)
         {
            if(!§1z§[_loc2_])
            {
               _loc3_ = new §2!C§(param1[_loc2_],_loc2_);
               §2v§.log("Initializing cutScene: " + _loc2_);
               §1z§[_loc2_] = _loc3_;
               if(§ null§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§>3§ = §2!C§.§>!I§;
               }
            }
         }
      }
      
      public static function §?!o§(param1:String, param2:§&!m§) : §2!C§
      {
         var _loc3_:§2!C§ = §1z§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §6;§(param1:String) : §2!C§
      {
         var _loc2_:§2!C§ = §1z§[param1];
         if(_loc2_ && § null§.indexOf(param1))
         {
            _loc2_.§>3§ = §2!C§.§>!I§;
         }
         return _loc2_;
      }
      
      public static function §2U§(param1:String) : void
      {
         if(§ null§.indexOf(param1) < 0)
         {
            § null§.push(param1);
         }
      }
   }
}
