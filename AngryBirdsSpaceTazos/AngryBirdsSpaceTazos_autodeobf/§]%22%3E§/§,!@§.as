package §]">§
{
   import §"!&§.§"!#§;
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §@w§.§`a§;
   
   public class §,!@§ extends §[!p§
   {
      
      public static const §!!p§:String = "TAZOS_POWER_PIECE_";
       
      
      private var §+O§:Number;
      
      public function §,!@§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:§`a§, param6:Number)
      {
         super(param1,param2,param3,param4,param5.x,param5.y,param5.angle,param6);
         this.§+O§ = (param4 as §"!#§).indestructibleTime;
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         §7!w§ = new §9"9§(§2"!§,(§2"!§ as §"!#§).lifeTime);
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         if(this.§+O§ <= 0)
         {
            §7!w§.playDestroyedSound();
            return super.applyDamage(param1,param2,param3,param4);
         }
         return 0;
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         super.updateBeforeRemoving(param1);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         this.§+O§ -= param1;
      }
   }
}
