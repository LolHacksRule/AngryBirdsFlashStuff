package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§%5§;
   import §3>§.§1!;§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §#q§ extends §7!>§
   {
      
      public static const §#!"§:String = "BlackBird";
      
      private static const §<!p§:Number = 2000;
      
      private static const §4!k§:Number = 200;
       
      
      private var §;z§:Number;
      
      private var §%"1§:Boolean = false;
      
      public function §#q§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§1!;§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         if(§8"?§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§;z§ = -1;
         this.§%"1§ = true;
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.§%"1§ && this.§;z§ < 0)
         {
            return true;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!specialPowerUsed && !this.§%"1§)
         {
            this.§%"1§ = true;
            this.§;z§ = §<!p§;
         }
         return _loc5_;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(this.§%"1§)
         {
            if(this.§;z§ <= §4!k§)
            {
               §"j§.setAnimation(§-"&§,false);
            }
            this.§;z§ -= param1;
         }
      }
      
      override public function get isNormal() : Boolean
      {
         if(this.§%"1§ || §8"?§)
         {
            return false;
         }
         return super.isNormal;
      }
      
      override public function updateBeforeRemoving(param1:§0!s§) : void
      {
         this.makeExplosion(param1);
         var _loc2_:String = §>!+§.getSound(§%5§.§&7§);
         §>!+§.playSoundLua(_loc2_);
         §5'§(param1);
         super.updateBeforeRemoving(param1);
      }
      
      private function makeExplosion(param1:§0!s§) : void
      {
         var _loc2_:Number = §`I§().GetPosition().x;
         var _loc3_:Number = §`I§().GetPosition().y;
         if(param1)
         {
            param1.§9",§(_loc2_,_loc3_,§>!+§.explosionRadius,§>!+§.explosionForce,§>!+§.explosionDamageRadius,§>!+§.explosionDamage);
         }
      }
   }
}
