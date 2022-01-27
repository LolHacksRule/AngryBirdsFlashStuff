package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§9`§;
   import §6!M§.§=!T§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §[3§ extends §34§
   {
      
      public static const §8p§:String = "BlackBird";
      
      private static const §%#§:Number = 2000;
      
      private static const §>e§:Number = 200;
       
      
      private var §%!$§:Number;
      
      private var § Y§:Boolean = false;
      
      public function §[3§(param1:Sprite, param2:§^5§, param3:b2World, param4:§9`§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(§!!a§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§%!$§ = -1;
         this.§ Y§ = true;
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.§ Y§ && this.§%!$§ < 0)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!specialPowerUsed && !this.§ Y§)
         {
            this.§ Y§ = true;
            this.§%!$§ = §%#§;
         }
         return _loc5_;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(this.§ Y§)
         {
            if(this.§%!$§ <= §>e§)
            {
               §;!5§.setAnimation(§5d§,false);
            }
            this.§%!$§ -= param1;
         }
      }
      
      override public function get isNormal() : Boolean
      {
         if(this.§ Y§ || §!!a§)
         {
            return false;
         }
         return super.isNormal;
      }
      
      override public function updateBeforeRemoving(param1:§0!5§) : void
      {
         this.makeExplosion(param1);
         var _loc2_:String = §'!m§.getSound(§=!T§.§0Y§);
         §'!m§.playSoundLua(_loc2_);
         §]L§(param1);
         super.updateBeforeRemoving(param1);
      }
      
      private function makeExplosion(param1:§0!5§) : void
      {
         var _loc2_:Number = §9B§().GetPosition().x;
         var _loc3_:Number = §9B§().GetPosition().y;
         if(param1)
         {
            param1.§[! §(_loc2_,_loc3_,§'!m§.explosionRadius,§'!m§.explosionForce,§'!m§.explosionDamageRadius,§'!m§.explosionDamage);
         }
      }
   }
}
