package §5"D§
{
   import §!u§.§,9§;
   import §3R§.§1!R§;
   import §4"@§.Sprite;
   import §6!M§.§9`§;
   import §6!M§.§?"H§;
   import §;`§.b2World;
   import §>"!§.§@!9§;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   
   public class §&!,§ extends §34§
   {
      
      public static const §8p§:String = "TazosBird";
       
      
      private var §#"§:Boolean = false;
      
      private var §[q§:§,9§;
      
      private var §9!F§:Boolean = false;
      
      private var §7!O§:Number;
      
      private var §1P§:§?"H§;
      
      public function §&!,§(param1:Sprite, param2:§^5§, param3:b2World, param4:§9`§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         this.§1P§ = param4 as §?"H§;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         if(this.§9!F§)
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
         if(§6"5§)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(this.§9!F§)
         {
            this.§7!O§ -= param1;
            if(this.§7!O§ <= 0)
            {
               this.activateSpecialPower(param2,x,y);
            }
         }
         if(§!!a§ && !this.§#"§)
         {
            this.§#"§ = true;
            §@!9§.playSound("tazos_fly_loop","6",100,1);
         }
         if(!this.§[q§ && param2)
         {
            this.§[q§ = §,9§(param2.addObject(§,9§.§8p§,x / §1!R§.§00§,y / §1!R§.§00§,0,§3!3§.§'!y§));
         }
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         if(!this.§9!F§)
         {
            this.§7!O§ = this.§1P§.specialActivationDelay;
            this.§9!F§ = true;
         }
         if(this.§#"§)
         {
            this.§#"§ = false;
            §@!9§.§"!y§("6");
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§[q§)
         {
            this.§[q§.§08§(x,y,this.§9!F§);
         }
      }
      
      override public function updateBeforeRemoving(param1:§0!5§) : void
      {
         if(this.§#"§)
         {
            this.§#"§ = false;
            §@!9§.§"!y§("6");
         }
         if(!§6"5§)
         {
            this.makeExplosion(param1);
            §]L§(param1);
         }
         super.updateBeforeRemoving(param1);
      }
      
      private function makeExplosion(param1:§0!5§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:§>q§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         if(this.§1P§.§6J§ > 0)
         {
            _loc2_ = §9B§().GetPosition().x;
            _loc3_ = §9B§().GetPosition().y;
            _loc5_ = 0;
            _loc8_ = 0;
            while(_loc8_ < this.§1P§.§6J§)
            {
               _loc9_ = this.§1P§.§%S§(_loc8_);
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               (_loc4_ = param1.addObject(_loc9_,_loc2_ + _loc6_ * this.§1P§.spawnDistance,_loc3_ + _loc7_ * this.§1P§.spawnDistance,0,§3!3§.§'!y§,false,true,false)).§9B§().SetLinearVelocity(new b2Vec2(_loc6_ * this.§1P§.spawnedObjectSpeed * (1 + Math.random()),_loc7_ * this.§1P§.spawnedObjectSpeed * (1 + Math.random())));
               _loc5_ += Math.PI * 2 / this.§1P§.§6J§;
               _loc8_++;
            }
         }
         if(param1)
         {
            param1.§[! §(_loc2_,_loc3_,§'!m§.explosionRadius,§'!m§.explosionForce,§'!m§.explosionDamageRadius,§'!m§.explosionDamage);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§[q§)
         {
            this.§[q§.dispose();
            this.§[q§ = null;
         }
         super.dispose();
      }
   }
}
