package §2!#§
{
   import §-!0§.§'!3§;
   import §0!<§.§#y§;
   import flash.utils.Dictionary;
   
   public class §9!5§
   {
      
      private static var §8o§:Array = [];
      
      private static var §[!@§:Dictionary = new Dictionary();
       
      
      public function §9!5§()
      {
         super();
      }
      
      public static function §7J§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§&§ = null;
         for(_loc2_ in param1)
         {
            if(!§[!@§[_loc2_])
            {
               _loc3_ = new §&§(param1[_loc2_],_loc2_);
               §#y§.log("Initializing cutScene: " + _loc2_);
               §[!@§[_loc2_] = _loc3_;
               if(§8o§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§>!+§ = §&§.§#v§;
               }
            }
         }
      }
      
      public static function §`&§(param1:String, param2:§'!3§) : §&§
      {
         var _loc3_:§&§ = §[!@§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §,"§(param1:String) : §&§
      {
         var _loc2_:§&§ = §[!@§[param1];
         if(_loc2_ && §8o§.indexOf(param1))
         {
            _loc2_.§>!+§ = §&§.§#v§;
         }
         return _loc2_;
      }
      
      public static function §,c§(param1:String) : void
      {
         if(§8o§.indexOf(param1) < 0)
         {
            §8o§.push(param1);
         }
      }
   }
}
