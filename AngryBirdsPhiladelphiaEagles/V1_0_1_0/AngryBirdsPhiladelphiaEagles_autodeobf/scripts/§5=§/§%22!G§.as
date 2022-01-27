package §5=§
{
   import §##§.§package§;
   
   public class §"!G§ extends §^n§
   {
       
      
      public function §"!G§()
      {
         super();
      }
      
      public static function §>k§(param1:String) : String
      {
         var _loc2_:§-+§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         try
         {
            _loc2_ = §@-§(param1);
            _loc3_ = param1.split("-");
            _loc4_ = parseInt(_loc3_[1]) - 1;
            return §package§.§1D§[_loc4_] + " \n" + §package§.§7>§[_loc4_];
         }
         catch(e:Error)
         {
            return param1;
         }
      }
   }
}
