package §[#a§
{
   import §0m§.b2Vec2;
   import §3"q§.b2AABB;
   import §52§.§;!p§;
   import §9$§.Sprite;
   import §=#n§.b2Body;
   import §=#n§.b2Fixture;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §`#C§.§-"L§;
   import §`#C§.§8K§;
   
   public class §<"H§
   {
       
      
      protected var mWorld:b2World;
      
      private var §]Y§:Sprite;
      
      private var §6M§:Sprite;
      
      private var §`h§:Number = 0.0;
      
      protected var §`"[§:Number;
      
      protected var §-#c§:b2Fixture;
      
      protected var § !7§:b2Body;
      
      protected var §`!w§:§8K§;
      
      protected var §%!^§:Boolean = false;
      
      protected var §'P§:int = -1;
      
      protected var §8"W§:Number;
      
      private var §@"J§:Boolean;
      
      public function §<"H§(param1:Sprite, param2:b2World, param3:§8K§)
      {
         this.§`"[§ = §="@§.§>#P§;
         super();
         this.§]Y§ = param1;
         this.mWorld = param2;
         this.§`!w§ = param3;
         if(this.§`!w§)
         {
            this.§+"I§(this.§`!w§.getItemZOrder());
         }
         else
         {
            this.§+"I§(1);
         }
         this.§@"J§ = this.§`!w§.§"P§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]Y§;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§6M§;
      }
      
      public function get levelItem() : §8K§
      {
         return this.§`!w§;
      }
      
      public function get §0!%§() : Boolean
      {
         return this.§%!^§;
      }
      
      public function get §"4§() : Number
      {
         return this.§`h§;
      }
      
      public function get §8#6§() : Boolean
      {
         return this.§@"J§;
      }
      
      public function set §8#6§(param1:Boolean) : void
      {
         this.§@"J§ = param1;
      }
      
      public function set §,#X§(param1:Number) : void
      {
         this.§8"W§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§'P§ == §7#]§.§4"x§)
         {
            return this.§8"W§;
         }
         return 1;
      }
      
      public function get shape() : §-"L§
      {
         return this.§`!w§.shape;
      }
      
      public function §6y§() : void
      {
         if(!this.§6M§)
         {
            this.§6M§ = new Sprite();
         }
      }
      
      public function dispose(param1:Boolean = true) : void
      {
         this.§%!^§ = true;
         if(param1)
         {
            if(this.mWorld && this.§ !7§)
            {
               this.mWorld.DestroyBody(this.§ !7§);
            }
         }
         if(this.§]Y§)
         {
            this.§]Y§.dispose();
            this.§]Y§ = null;
         }
         if(this.§6M§)
         {
            this.§6M§.dispose();
            this.§6M§ = null;
         }
         this.mWorld = null;
         this.§ !7§ = null;
         this.§-#c§ = null;
         if(this.§8#6§)
         {
            §>"$§.§#0§.checkForLevelEnd();
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.§ !7§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§-#c§.§8">§();
         if(param1 >= _loc3_.§6G§.x && param1 <= _loc3_.§%G§.x && param2 >= _loc3_.§6G§.y && param2 <= _loc3_.§%G§.y)
         {
            return this.§-#c§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.getBody() && this.getBody().IsAwake();
      }
      
      public function get §9"P§() : int
      {
         return this.§'P§;
      }
      
      public function set §9"P§(param1:int) : void
      {
         if(this.§'P§ == param1)
         {
            return;
         }
         this.§'P§ = param1;
         if(this.§ !7§)
         {
            this.updateGravityFilter();
            this.§ !7§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§'P§)
         {
            case -1:
            case §7#]§.§]$&§:
               this.§ !7§.SetLinearDamping(§;!p§.§-#m§);
               this.§ !7§.SetAngularDamping(§;!p§.§%#s§);
               this.§ !7§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§'P§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function get §;#e§() : Number
      {
         return this.§ !7§.GetPosition().x;
      }
      
      public function get §^"@§() : Number
      {
         return this.§ !7§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§7!O§) : void
      {
         if(this.§`h§ + param1 > Number.MAX_VALUE)
         {
            this.§`h§ = 0;
         }
         this.§`h§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§%#T§) : void
      {
      }
      
      public function leftSensor(param1:§%#T§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§<"H§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§<"H§ = null) : void
      {
      }
      
      public function collidedWith(param1:§<"H§) : void
      {
      }
      
      public function collisionEnded(param1:§<"H§) : void
      {
      }
      
      public function §]]§() : Number
      {
         return this.§`"[§;
      }
      
      public function §+"I§(param1:Number) : void
      {
         if(param1 == 0)
         {
            param1 = 1;
         }
         this.§`"[§ = param1;
         this.sprite.z = param1;
      }
   }
}
