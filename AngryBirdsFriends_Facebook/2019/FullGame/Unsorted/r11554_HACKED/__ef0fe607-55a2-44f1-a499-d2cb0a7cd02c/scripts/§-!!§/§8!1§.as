package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §?§.§7E§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §8!1§ extends §,!h§
   {
      
      public static const §^"0§:Number = 0.15;
       
      
      protected var §<"<§:§7E§;
      
      protected var §[!O§:§&"m§;
      
      public function §8!1§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         this.§<"<§ = param4 as §7E§;
         if(this.§<"<§)
         {
            if(this.§<"<§.scale)
            {
               param6 = this.§<"<§.scale;
            }
         }
         this.§&#z§();
         super(param1,param2,param3,param4,param5,param6);
      }
      
      protected function §&#z§() : void
      {
         this.§[!O§ = new §&"m§(this.§<"<§);
      }
      
      override protected function initObjectRenderer() : §+!&§
      {
         var _loc1_:Boolean = false;
         if(this.§<"<§)
         {
            _loc1_ = this.§<"<§.§&j§;
         }
         return new §+!&§(animation,sprite,_loc1_);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         this.§[!O§.update(param1,param2,x,y);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         sprite.rotation = §%"b§ + this.§[!O§.§9!B§;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§[!O§.removeOnNextUpdate)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(health <= 0)
         {
            if(this.§<"<§.spriteScore)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               param1.addObject(this.§<"<§.spriteScore,_loc3_,_loc4_,0,§7S§.ID_NEXT_FREE,false,false,false,3,true);
            }
         }
         super.updateBeforeRemoving(param1,param2);
      }
      
      protected function §2"B§(param1:§ #'§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:Number = §30§();
         this.§[!O§.spawnParticles(true,param1,_loc2_,_loc3_,_loc4_);
         this.§[!O§.§#!%§(param1,_loc2_,_loc3_,_loc4_);
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         super.createPhysicsBody(param1,param2);
         getBody().SetLinearDamping(§^"0§);
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         this.§[!O§.applyDamage(param1,param2,param3);
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
      
      override protected function playCollisionSound() : void
      {
         if(this.§<"<§.materialCollisionSound)
         {
            this.§[!O§.playCollisionSound();
         }
         else
         {
            super.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         if(this.§<"<§.materialDamageSound)
         {
            this.§[!O§.playDamagedSound();
         }
         else
         {
            super.playDamagedSound();
         }
      }
      
      override public function playDestroyedSound() : void
      {
         if(this.§<"<§.materialDestroyedSound)
         {
            this.§[!O§.playDestroyedSound();
         }
         else
         {
            super.playDestroyedSound();
         }
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         this.§2"B§(param1);
      }
      
      override public function addDamageParticles(param1:§ #'§, param2:int) : void
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number = §30§();
         this.§[!O§.spawnParticles(false,param1,_loc3_,_loc4_,_loc5_,0.5);
      }
      
      override public function applyLinearForce() : void
      {
         if(§4!_§.linearForce)
         {
            §=#w§.ApplyForce(new b2Vec2(§4!_§.linearForce.x * §=#w§.GetMass(),§4!_§.linearForce.y * §=#w§.GetMass()),§=#w§.GetWorldCenter());
         }
         else if(this.§<"<§.§&!]§ != 0 || this.§<"<§.§0§ != 0)
         {
            §=#w§.ApplyForce(new b2Vec2(this.§<"<§.§&!]§ * §=#w§.GetMass(),this.§<"<§.§0§ * §=#w§.GetMass()),§=#w§.GetWorldCenter());
         }
      }
   }
}
