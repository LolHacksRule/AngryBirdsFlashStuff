package §?6§
{
   import §!6§.§3!5§;
   import §+f§.§4!8§;
   import flash.utils.Dictionary;
   
   public class §'!K§
   {
      
      private static var §5!N§:Array = [];
      
      private static var §&k§:Dictionary = new Dictionary();
       
      
      public function §'!K§()
      {
         super();
      }
      
      public static function §>@§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§;z§ = null;
         for(_loc2_ in param1)
         {
            if(!§&k§[_loc2_])
            {
               _loc3_ = new §;z§(param1[_loc2_],_loc2_);
               §3!5§.log("Initializing cutScene: " + _loc2_);
               §&k§[_loc2_] = _loc3_;
               if(§5!N§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§2Q§ = §;z§.§]W§;
               }
            }
         }
      }
      
      public static function §1!9§(param1:String, param2:§4!8§) : §;z§
      {
         var _loc3_:§;z§ = §&k§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §[x§(param1:String) : §;z§
      {
         var _loc2_:§;z§ = §&k§[param1];
         if(_loc2_ && §5!N§.indexOf(param1))
         {
            _loc2_.§2Q§ = §;z§.§]W§;
         }
         return _loc2_;
      }
      
      public static function §^]§(param1:String) : void
      {
         if(§5!N§.indexOf(param1) < 0)
         {
            §5!N§.push(param1);
         }
      }
   }
}
