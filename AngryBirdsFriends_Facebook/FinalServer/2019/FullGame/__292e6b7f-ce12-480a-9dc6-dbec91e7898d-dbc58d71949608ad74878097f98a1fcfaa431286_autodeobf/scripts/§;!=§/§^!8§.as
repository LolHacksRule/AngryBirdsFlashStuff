package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §7"T§.§7b§;
   import §8#K§.§ !=§;
   import §8#K§.§&2§;
   
   public class §^!8§ extends §1!y§
   {
      
      public static const §>6§:Number = 0.15;
       
      
      protected var §0"^§:§ !=§;
      
      protected var §`!g§:§%j§;
      
      public function §^!8§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         this.§0"^§ = param4 as § !=§;
         if(this.§0"^§)
         {
            if(this.§0"^§.scale)
            {
               param6 = this.§0"^§.scale;
            }
         }
         this.§5#f§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function §5#f§() : void
      {
         this.§`!g§ = new §%j§(this.§0"^§);
      }
      
      override protected function initObjectRenderer() : §1!"§
      {
         var _loc1_:Boolean = false;
         if(this.§0"^§)
         {
            _loc1_ = this.§0"^§.§ 9§;
         }
         return new §1!"§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         this.§`!g§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §^]§ + this.§`!g§.§["c§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§`!g§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(health <= 0)
         {
            if(this.§0"^§.spriteScore)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               param1.addObject(this.§0"^§.spriteScore,_loc3_,_loc4_,0,§ !i§.ID_NEXT_FREE,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §9#$§(param1:§]!m§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §3"W§();
         this.§`!g§.spawnParticles(true,param1,_loc2_,_loc3_,_loc4_);
         this.§`!g§.§=$?§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§>6§);
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         this.§`!g§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override protected function playCollisionSound() : void
      {
         if(this.§0"^§.materialCollisionSound)
         {
            this.§`!g§.playCollisionSound();
         }
         else
         {
            super.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         if(this.§0"^§.materialDamageSound)
         {
            this.§`!g§.playDamagedSound();
         }
         else
         {
            super.playDamagedSound();
         }
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§0"^§.materialDestroyedSound)
         {
            this.§`!g§.playDestroyedSound();
         }
         else
         {
            super.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         this.§9#$§(param1);
      }
      
      override public function addDamageParticles(param1:§]!m§, param2:int) : void
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §3"W§();
         this.§`!g§.spawnParticles(false,param1,_loc3_,_loc4_,_loc5_,0.5);
      }
      
      override public function applyLinearForce() : void
      {
         if(§9y§.linearForce)
         {
            §2"j§.ApplyForce(new b2Vec2(§9y§.linearForce.x * §2"j§.GetMass(),§9y§.linearForce.y * §2"j§.GetMass()),§2"j§.GetWorldCenter());
         }
         else if(this.§0"^§.§ `§ != 0 || this.§0"^§.§'K§ != 0)
         {
            §2"j§.ApplyForce(new b2Vec2(this.§0"^§.§ `§ * §2"j§.GetMass(),this.§0"^§.§'K§ * §2"j§.GetMass()),§2"j§.GetWorldCenter());
         }
      }
   }
}
