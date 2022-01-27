package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§34§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §&"H§ extends §>![§
   {
       
      
      public function §&"H§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         §9f§ = new §'!v§(this,§34§(param4));
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function updateOutOfCamera() : void
      {
         health = 0;
      }
   }
}
