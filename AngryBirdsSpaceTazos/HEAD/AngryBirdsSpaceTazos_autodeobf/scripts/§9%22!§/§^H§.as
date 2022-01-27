package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §^H§ extends §!!H§
   {
       
      
      public function §^H§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         super.activateSpecialPower(param1,param2,param3);
         return false;
      }
   }
}
