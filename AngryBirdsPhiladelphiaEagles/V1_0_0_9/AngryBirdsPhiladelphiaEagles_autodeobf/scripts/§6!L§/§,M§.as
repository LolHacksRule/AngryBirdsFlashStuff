package §6!L§
{
   import §=!0§.§9!+§;
   
   public class §,M§ extends §&u§
   {
       
      
      public function §,M§()
      {
         super();
      }
      
      public static function §2s§(param1:String) : String
      {
         var _loc2_:§7n§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         try
         {
            _loc2_ = §8!!§(param1);
            _loc3_ = param1.split("-");
            _loc4_ = parseInt(_loc3_[1]) - 1;
            return §9!+§.§`?§[_loc4_] + " \n" + §9!+§.§%!B§[_loc4_];
         }
         catch(e:Error)
         {
            return param1;
         }
      }
   }
}
