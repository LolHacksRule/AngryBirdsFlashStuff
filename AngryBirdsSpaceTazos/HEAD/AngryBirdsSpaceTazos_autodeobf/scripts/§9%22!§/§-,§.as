package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§4"&§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import §="+§.§&!i§;
   
   public class §-,§ extends §1!`§
   {
      
      public static const §#!"§:String = "TAZOS_POWER_PIECE_";
       
      
      private var §1S§:Number;
      
      public function §-,§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:§&!i§, param6:Number)
      {
         super(param1,param2,param3,param4,param5.x,param5.y,param5.angle,param6);
         this.§1S§ = (param4 as §4"&§).indestructibleTime;
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         §%a§ = new §3"A§(§>!+§,(§>!+§ as §4"&§).lifeTime);
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         if(this.§1S§ <= 0)
         {
            §%a§.playDestroyedSound();
            return super.applyDamage(param1,param2,param3,param4);
         }
         return 0;
      }
      
      override public function updateBeforeRemoving(param1:§0!s§) : void
      {
         super.updateBeforeRemoving(param1);
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         this.§1S§ -= param1;
      }
   }
}
