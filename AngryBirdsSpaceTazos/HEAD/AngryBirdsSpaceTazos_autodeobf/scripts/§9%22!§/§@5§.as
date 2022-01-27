package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import §="+§.§&!i§;
   
   public class §@5§ extends §1!`§
   {
      
      public static const §#!"§:String = "BLOCK_ASTEROID_";
       
      
      private var §+!5§:Number = 0;
      
      public function §@5§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:§&!i§, param6:Number)
      {
         super(param1,param2,param3,param4,param5.x,param5.y,param5.angle,param6);
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         §%a§ = new §2!7§(§>!+§);
      }
   }
}
