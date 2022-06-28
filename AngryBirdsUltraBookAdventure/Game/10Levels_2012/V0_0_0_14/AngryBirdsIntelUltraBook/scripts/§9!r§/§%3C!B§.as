package §9!r§
{
   import §+&§.§3D§;
   import §]![§.§1! §;
   
   public class §<!B§ extends §1! §
   {
      
      public static const §`'§:int = 5;
      
      private static var §`Y§:§1! § = new §<!B§(0,0,§3D§.§1g§,§3D§.§]0§,§3D§.§%+§,§3D§.§'!K§,§`'§);
       
      
      public function §<!B§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §1! §
      {
         var _loc4_:§1! § = null;
         switch(param1)
         {
            case §`'§:
               _loc4_ = §`Y§;
               return new §1! §(param2,param3,_loc4_.§]!E§,_loc4_.push,_loc4_.§`!>§,_loc4_.damage,param1);
            default:
               return §1! §.createExplosion(param1,param2,param3);
         }
      }
   }
}
