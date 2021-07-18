package §[#a§
{
   import §52§.§;!p§;
   
   public class §3#Z§ extends §<#;§
   {
      
      public static const §!O§:int = 6;
      
      public static const §2#j§:int = 7;
      
      private static var §!2§:§<#;§ = new §3#Z§(0,0,§;!p§.§=!a§,§;!p§.§,<§,§;!p§.§>2§,§;!p§.§>"K§,§!O§);
      
      private static var §^!2§:§<#;§ = new §3#Z§(0,0,2,3,1,2.5,§2#j§);
       
      
      public function §3#Z§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int) : §<#;§
      {
         var _loc5_:§<#;§ = null;
         switch(param1)
         {
            case §!O§:
               _loc5_ = §!2§;
               break;
            case §2#j§:
               _loc5_ = §^!2§;
               break;
            default:
               return §<#;§.createExplosion(param1,param2,param3);
         }
         return new §<#;§(param2,param3,_loc5_.§""S§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
   }
}
