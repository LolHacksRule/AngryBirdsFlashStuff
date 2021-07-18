package §^]§
{
   import §,!"§.§@f§;
   
   public class §;!P§ extends §`!K§
   {
       
      
      public function §;!P§()
      {
         super();
      }
      
      public static function §[e§(param1:String) : String
      {
         var _loc2_:§7!K§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         try
         {
            _loc2_ = §0@§(param1);
            _loc3_ = param1.split("-");
            _loc4_ = parseInt(_loc3_[1]) - 1;
            return §@f§.§0!,§[_loc4_] + " \n" + §@f§.§-k§[_loc4_];
         }
         catch(e:Error)
         {
            return param1;
         }
      }
   }
}
