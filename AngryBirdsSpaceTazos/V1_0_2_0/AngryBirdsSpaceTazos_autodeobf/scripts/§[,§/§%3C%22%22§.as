package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§-!&§;
   import §;"=§.§]"<§;
   import §[!v§.§!e§;
   
   public class §<""§ extends §#-§
   {
      
      public static const §2_§:String = "TAZOS_POWER_PIECE_";
       
      
      private var §,v§:Number;
      
      public function §<""§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:§!e§, param6:Number)
      {
         super(param1,param2,param3,param4,param5.x,param5.y,param5.angle,param6);
         this.§,v§ = (param4 as §-!&§).indestructibleTime;
      }
      
      override protected function initializeObjectBehaviorLogic() : void
      {
         §!!w§ = new §"<§(§^B§,(§^B§ as §-!&§).lifeTime);
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         if(this.§,v§ <= 0)
         {
            §!!w§.playDestroyedSound();
            return super.applyDamage(param1,param2,param3,param4);
         }
         return 0;
      }
      
      override public function updateBeforeRemoving(param1:§class§) : void
      {
         super.updateBeforeRemoving(param1);
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         this.§,v§ -= param1;
      }
   }
}
