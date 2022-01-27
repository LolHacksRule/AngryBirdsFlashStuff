package §3!%§
{
   import §>Y§.§%R§;
   
   public class §3!6§ extends §-k§
   {
       
      
      public function §3!6§()
      {
         super();
      }
      
      public static function § Y§(param1:String) : String
      {
         var _loc2_:§9i§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         try
         {
            _loc2_ = §#L§(param1);
            _loc3_ = param1.split("-");
            _loc4_ = parseInt(_loc3_[1]) - 1;
            return §%R§.§5!!§[_loc4_] + " \n" + §%R§.§]L§[_loc4_];
         }
         catch(e:Error)
         {
            return param1;
         }
      }
   }
}
