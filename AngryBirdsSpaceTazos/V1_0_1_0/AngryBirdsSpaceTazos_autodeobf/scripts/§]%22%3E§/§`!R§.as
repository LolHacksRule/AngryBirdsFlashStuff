package §]">§
{
   import §"!&§.§+W§;
   import §"!&§.§="D§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §`!R§ extends §6!y§
   {
      
      public static const §!!p§:String = "BlackBird";
      
      private static const §0V§:Number = 2000;
      
      private static const §4s§:Number = 200;
       
      
      private var §&!B§:Number;
      
      private var §"!v§:Boolean = false;
      
      public function §`!R§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         if(§?!d§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§&!B§ = -1;
         this.§"!v§ = true;
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.§"!v§ && this.§&!B§ < 0)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!specialPowerUsed && !this.§"!v§)
         {
            this.§"!v§ = true;
            this.§&!B§ = §0V§;
         }
         return _loc5_;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(this.§"!v§)
         {
            if(this.§&!B§ <= §4s§)
            {
               §'%§.setAnimation(§7"3§,false);
            }
            this.§&!B§ -= param1;
         }
      }
      
      override public function get isNormal() : Boolean
      {
         if(this.§"!v§ || §?!d§)
         {
            return false;
         }
         return super.isNormal;
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         this.makeExplosion(param1);
         var _loc2_:String = §2"!§.getSound(§="D§.§@"-§);
         §2"!§.playSoundLua(_loc2_);
         native(param1);
         super.updateBeforeRemoving(param1);
      }
      
      private function makeExplosion(param1:§;U§) : void
      {
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         if(param1)
         {
            param1.§6!N§(_loc2_,_loc3_,§2"!§.explosionRadius,§2"!§.explosionForce,§2"!§.explosionDamageRadius,§2"!§.explosionDamage);
         }
      }
   }
}
