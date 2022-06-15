package §`!]§
{
   import §6!D§.§0Y§;
   import §6o§.§+!k§;
   import flash.utils.Dictionary;
   
   public class §3x§
   {
      
      private static var §56§:Array = [];
      
      private static var §8b§:Dictionary = new Dictionary();
       
      
      public function §3x§()
      {
         super();
      }
      
      public static function §#!%§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§="A§ = null;
         for(_loc2_ in param1)
         {
            if(!§8b§[_loc2_])
            {
               _loc3_ = new §="A§(param1[_loc2_],_loc2_);
               §+!k§.log("Initializing cutScene: " + _loc2_);
               §8b§[_loc2_] = _loc3_;
               if(§56§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§]"+§ = §="A§.§72§;
               }
            }
         }
      }
      
      public static function §<!8§(param1:String, param2:§0Y§) : §="A§
      {
         var _loc3_:§="A§ = §8b§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §<!5§(param1:String) : §="A§
      {
         var _loc2_:§="A§ = §8b§[param1];
         if(_loc2_ && §56§.indexOf(param1))
         {
            _loc2_.§]"+§ = §="A§.§72§;
         }
         return _loc2_;
      }
      
      public static function §<!'§(param1:String) : void
      {
         if(§56§.indexOf(param1) < 0)
         {
            §56§.push(param1);
         }
      }
   }
}
