package §5"D§
{
   import §4"@§.Sprite;
   import §5!<§.§5!l§;
   import §6!M§.§<!r§;
   import §6!M§.§@""§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §92§ extends §0R§
   {
      
      public static const §8p§:String = "TAZOS_POWER_PIECE_";
       
      
      private var §3G§:Number;
      
      public function §92§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:§5!l§, param6:Number)
      {
         super(param1,param2,param3,param4,param5.x,param5.y,param5.angle,param6);
         this.§3G§ = (param4 as §@""§).indestructibleTime;
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         §^"=§ = new §1!7§(§'!m§,(§'!m§ as §@""§).lifeTime);
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         if(this.§3G§ <= 0)
         {
            §^"=§.playDestroyedSound();
            return super.applyDamage(param1,param2,param3,param4);
         }
         return 0;
      }
      
      override public function updateBeforeRemoving(param1:§0!5§) : void
      {
         super.updateBeforeRemoving(param1);
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         this.§3G§ -= param1;
      }
   }
}
