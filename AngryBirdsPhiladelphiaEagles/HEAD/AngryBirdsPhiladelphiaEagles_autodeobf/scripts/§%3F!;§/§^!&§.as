package §?!;§
{
   import §8;§.§+!%§;
   
   public class §^!&§ extends §6H§
   {
       
      
      public function §^!&§()
      {
         super();
      }
      
      public static function §"@§(param1:String) : String
      {
         var _loc2_:§;h§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         try
         {
            _loc2_ = §7`§(param1);
            _loc3_ = param1.split("-");
            _loc4_ = parseInt(_loc3_[1]) - 1;
            return §+!%§.§,!M§[_loc4_] + " \n" + §+!%§.§case §[_loc4_];
         }
         catch(e:Error)
         {
            return param1;
         }
      }
   }
}
