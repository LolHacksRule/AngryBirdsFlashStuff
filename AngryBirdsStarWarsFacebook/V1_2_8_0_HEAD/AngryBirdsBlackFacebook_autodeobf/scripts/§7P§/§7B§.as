package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§?#^§;
   import §3"5§.b2AABB;
   import §[R§.b2Vec2;
   import §^#>§.§0"x§;
   
   public class §7B§
   {
       
      
      protected var mWorld:b2World;
      
      private var §%G§:Sprite;
      
      private var §'!#§:Number = 0.0;
      
      protected var §^!L§:b2Fixture;
      
      protected var §04§:b2Body;
      
      protected var §;B§:§"t§;
      
      protected var §!"?§:Boolean = false;
      
      protected var § 3§:int = -1;
      
      protected var §`!u§:Number;
      
      public function §7B§(param1:Sprite, param2:b2World, param3:§"t§)
      {
         super();
         this.§%G§ = param1;
         this.mWorld = param2;
         this.§;B§ = param3;
         if(this.§;B§)
         {
            param1.z = this.§;B§.getItemZOrder();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function get levelItem() : §"t§
      {
         return this.§;B§;
      }
      
      public function get §9#;§() : Boolean
      {
         return this.§!"?§;
      }
      
      public function get §3! §() : Number
      {
         return this.§'!#§;
      }
      
      public function set §=5§(param1:Number) : void
      {
         this.§`!u§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§ 3§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            return this.§`!u§;
         }
         return 1;
      }
      
      public function get shape() : §?#^§
      {
         return this.§;B§.shape;
      }
      
      public function dispose() : void
      {
         this.§!"?§ = true;
         if(this.mWorld && this.§04§)
         {
            this.mWorld.DestroyBody(this.§04§);
         }
         if(this.§%G§)
         {
            this.§%G§.dispose();
            this.§%G§ = null;
         }
         this.mWorld = null;
         this.§04§ = null;
         this.§^!L§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §3!t§() : b2Body
      {
         return this.§04§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§^!L§.§8# §();
         if(param1 >= _loc3_.§1!,§.x && param1 <= _loc3_.§ D§.x && param2 >= _loc3_.§1!,§.y && param2 <= _loc3_.§ D§.y)
         {
            return this.§^!L§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.§3!t§() && this.§3!t§().IsAwake();
      }
      
      public function get §=G§() : int
      {
         return this.§ 3§;
      }
      
      public function set §=G§(param1:int) : void
      {
         if(this.§ 3§ == param1)
         {
            return;
         }
         this.§ 3§ = param1;
         if(this.§04§)
         {
            this.updateGravityFilter();
            this.§04§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§ 3§)
         {
            case -1:
            case GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT:
               this.§04§.SetLinearDamping(§0"x§.§-M§);
               this.§04§.SetAngularDamping(§0"x§.§,"H§);
               this.§04§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§ 3§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§3!t§().GetPosition().x >= param3 && this.§3!t§().GetPosition().x <= param4 && this.§3!t§().GetPosition().y >= param1 && this.§3!t§().GetPosition().y <= param2;
      }
      
      public function get §&!d§() : Number
      {
         return this.§04§.GetPosition().x;
      }
      
      public function get §var§() : Number
      {
         return this.§04§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§;$§) : void
      {
         this.§'!#§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§1#E§) : void
      {
      }
      
      public function leftSensor(param1:§1#E§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§7B§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§7B§ = null) : void
      {
      }
      
      public function collidedWith(param1:§7B§) : void
      {
      }
      
      public function collisionEnded(param1:§7B§) : void
      {
      }
   }
}
