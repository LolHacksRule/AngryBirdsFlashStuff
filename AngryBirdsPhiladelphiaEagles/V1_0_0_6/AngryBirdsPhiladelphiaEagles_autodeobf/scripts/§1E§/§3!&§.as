package §1E§
{
   import §8!A§.§7!O§;
   
   public class §3!&§ extends §2h§
   {
       
      
      public function §3!&§()
      {
         super();
      }
      
      public static function §;!+§(param1:String) : String
      {
         var _loc2_:§8P§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         try
         {
            _loc2_ = §,?§(param1);
            _loc3_ = param1.split("-");
            _loc4_ = parseInt(_loc3_[1]) - 1;
            return §7!O§.§3!=§[_loc4_] + " \n" + §7!O§.§`v§[_loc4_];
         }
         catch(e:Error)
         {
            return param1;
         }
      }
   }
}
