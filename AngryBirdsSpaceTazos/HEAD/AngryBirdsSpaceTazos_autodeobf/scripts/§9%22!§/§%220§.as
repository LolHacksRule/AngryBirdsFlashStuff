package §9"!§
{
   import §&!]§.Sprite;
   import §1"?§.§-N§;
   import §3!S§.§<5§;
   import §3"#§.§`"8§;
   import §3>§.§1!;§;
   import §3>§.§]z§;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §"0§ extends §7!>§
   {
      
      public static const §#!"§:String = "TazosBird";
       
      
      private var §<o§:Boolean = false;
      
      private var §<!k§:§-N§;
      
      private var §&F§:Boolean = false;
      
      private var §0!I§:Number;
      
      private var §6`§:§]z§;
      
      public function §"0§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§1!;§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         this.§6`§ = param4 as §]z§;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         if(this.§&F§)
         {
            super.activateSpecialPower(param1,param2,param3);
            this.makeExplosion(param1);
            return true;
         }
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         this.makeExplosion(param1);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return true;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(§9!V§)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(this.§&F§)
         {
            this.§0!I§ -= param1;
            if(this.§0!I§ <= 0)
            {
               this.activateSpecialPower(param2,x,y);
            }
         }
         if(§8"?§ && !this.§<o§)
         {
            this.§<o§ = true;
            §<5§.playSound("tazos_fly_loop","6",100,1);
         }
         if(!this.§<!k§ && param2)
         {
            this.§<!k§ = §-N§(param2.addObject(§-N§.§#!"§,x / §`"8§.§3!=§,y / §`"8§.§3!=§,0,§"" §.§%A§));
         }
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         if(!this.§&F§)
         {
            this.§0!I§ = this.§6`§.specialActivationDelay;
            this.§&F§ = true;
         }
         if(this.§<o§)
         {
            this.§<o§ = false;
            §<5§.§["'§("6");
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§<!k§)
         {
            this.§<!k§.§=1§(x,y,this.§&F§);
         }
      }
      
      override public function updateBeforeRemoving(param1:§0!s§) : void
      {
         if(this.§<o§)
         {
            this.§<o§ = false;
            §<5§.§["'§("6");
         }
         if(!§9!V§)
         {
            this.makeExplosion(param1);
            §5'§(param1);
         }
         super.updateBeforeRemoving(param1);
      }
      
      private function makeExplosion(param1:§0!s§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:§,%§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         if(this.§6`§.§;"8§ > 0)
         {
            _loc2_ = §`I§().GetPosition().x;
            _loc3_ = §`I§().GetPosition().y;
            _loc5_ = 0;
            _loc8_ = 0;
            while(_loc8_ < this.§6`§.§;"8§)
            {
               _loc9_ = this.§6`§.§3x§(_loc8_);
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               (_loc4_ = param1.addObject(_loc9_,_loc2_ + _loc6_ * this.§6`§.spawnDistance,_loc3_ + _loc7_ * this.§6`§.spawnDistance,0,§"" §.§%A§,false,true,false)).§`I§().SetLinearVelocity(new b2Vec2(_loc6_ * this.§6`§.spawnedObjectSpeed * (1 + Math.random()),_loc7_ * this.§6`§.spawnedObjectSpeed * (1 + Math.random())));
               _loc5_ += Math.PI * 2 / this.§6`§.§;"8§;
               _loc8_++;
            }
         }
         if(param1)
         {
            param1.§9",§(_loc2_,_loc3_,§>!+§.explosionRadius,§>!+§.explosionForce,§>!+§.explosionDamageRadius,§>!+§.explosionDamage);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§<!k§)
         {
            this.§<!k§.dispose();
            this.§<!k§ = null;
         }
         super.dispose();
      }
   }
}
