package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§-_§;
   import §;"=§.§[e§;
   
   public class §%B§ extends §@9§
   {
      
      public static const §2_§:String = "BlackBird";
      
      private static const §&2§:Number = 2000;
      
      private static const §"!]§:Number = 200;
       
      
      private var §-"C§:Number;
      
      private var §@"?§:Boolean = false;
      
      public function §%B§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§[e§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§class§, param2:Number, param3:Number) : Boolean
      {
         if(§!!K§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§-"C§ = -1;
         this.§@"?§ = true;
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.§@"?§ && this.§-"C§ < 0)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!specialPowerUsed && !this.§@"?§)
         {
            this.§@"?§ = true;
            this.§-"C§ = §&2§;
         }
         return _loc5_;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(this.§@"?§)
         {
            if(this.§-"C§ <= §"!]§)
            {
               §&"C§.setAnimation(§+a§,false);
            }
            this.§-"C§ -= param1;
         }
      }
      
      override public function get isNormal() : Boolean
      {
         if(this.§@"?§ || §!!K§)
         {
            return false;
         }
         return super.isNormal;
      }
      
      override public function updateBeforeRemoving(param1:§class§) : void
      {
         this.makeExplosion(param1);
         var _loc2_:String = §^B§.getSound(§-_§.§;6§);
         §^B§.playSoundLua(_loc2_);
         §""#§(param1);
         super.updateBeforeRemoving(param1);
      }
      
      private function makeExplosion(param1:§class§) : void
      {
         var _loc2_:Number = § <§().GetPosition().x;
         var _loc3_:Number = § <§().GetPosition().y;
         if(param1)
         {
            param1.§[#§(_loc2_,_loc3_,§^B§.explosionRadius,§^B§.explosionForce,§^B§.explosionDamageRadius,§^B§.explosionDamage);
         }
      }
   }
}
