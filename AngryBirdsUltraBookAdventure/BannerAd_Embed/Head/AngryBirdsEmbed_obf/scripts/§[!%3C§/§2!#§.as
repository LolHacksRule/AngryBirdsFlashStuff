package §[!<§
{
   import §2§.§0!<§;
   import §<h§.§;@§;
   import flash.utils.Dictionary;
   
   public class §2!#§
   {
      
      private static var §9!5§:Array = [];
      
      private static var §8o§:Dictionary = new Dictionary();
       
      
      public function §2!#§()
      {
         super();
      }
      
      public static function §[!@§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§,c§ = null;
         for(_loc2_ in param1)
         {
            if(!§8o§[_loc2_])
            {
               _loc3_ = new §,c§(param1[_loc2_],_loc2_);
               §0!<§.log("Initializing cutScene: " + _loc2_);
               §8o§[_loc2_] = _loc3_;
               if(§9!5§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§4e§ = §,c§.§<!G§;
               }
            }
         }
      }
      
      public static function §7J§(param1:String, param2:§;@§) : §,c§
      {
         var _loc3_:§,c§ = §8o§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §]!3§(param1:String) : §,c§
      {
         var _loc2_:§,c§ = §8o§[param1];
         if(_loc2_ && §9!5§.indexOf(param1))
         {
            _loc2_.§4e§ = §,c§.§<!G§;
         }
         return _loc2_;
      }
      
      public static function §`&§(param1:String) : void
      {
         if(§9!5§.indexOf(param1) < 0)
         {
            §9!5§.push(param1);
         }
      }
   }
}
