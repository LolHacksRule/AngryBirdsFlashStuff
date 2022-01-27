package §#R§
{
   import §3!O§.§5q§;
   import §4!0§.§3§;
   import flash.utils.Dictionary;
   
   public class §0I§
   {
      
      private static var §1!!§:Array = [];
      
      private static var §@!K§:Dictionary = new Dictionary();
       
      
      public function §0I§()
      {
         super();
      }
      
      public static function §!9§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§?x§ = null;
         for(_loc2_ in param1)
         {
            if(!§@!K§[_loc2_])
            {
               _loc3_ = new §?x§(param1[_loc2_],_loc2_);
               §5q§.log("Initializing cutScene: " + _loc2_);
               §@!K§[_loc2_] = _loc3_;
               if(§1!!§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§95§ = §?x§.§9!4§;
               }
            }
         }
      }
      
      public static function §?!K§(param1:String, param2:§3§) : §?x§
      {
         var _loc3_:§?x§ = §@!K§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §68§(param1:String) : §?x§
      {
         var _loc2_:§?x§ = §@!K§[param1];
         if(_loc2_ && §1!!§.indexOf(param1))
         {
            _loc2_.§95§ = §?x§.§9!4§;
         }
         return _loc2_;
      }
      
      public static function §^S§(param1:String) : void
      {
         if(§1!!§.indexOf(param1) < 0)
         {
            §1!!§.push(param1);
         }
      }
   }
}
