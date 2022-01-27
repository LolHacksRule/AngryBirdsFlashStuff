package §!r§
{
   import §"§.§96§;
   import §#g§.§'<§;
   import §#g§.§["%§;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   import §>"_§.b2Fixture;
   import §>"_§.b2World;
   import §>r§.b2AABB;
   import §use§.Sprite;
   
   public class §?!x§
   {
       
      
      protected var mWorld:b2World;
      
      private var §0v§:Sprite;
      
      private var §#"R§:Number = 0.0;
      
      protected var §&"B§:b2Fixture;
      
      protected var §-#6§:b2Body;
      
      protected var §+!j§:§["%§;
      
      protected var §@f§:Boolean = false;
      
      protected var §&!s§:int = -1;
      
      protected var §]"C§:Number;
      
      public function §?!x§(param1:Sprite, param2:b2World, param3:§["%§)
      {
         super();
         this.§0v§ = param1;
         this.mWorld = param2;
         this.§+!j§ = param3;
         if(this.§+!j§)
         {
            param1.z = this.§+!j§.getItemZOrder();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§0v§;
      }
      
      public function get levelItem() : §["%§
      {
         return this.§+!j§;
      }
      
      public function get §'b§() : Boolean
      {
         return this.§@f§;
      }
      
      public function get §<!"§() : Number
      {
         return this.§#"R§;
      }
      
      public function set §7#,§(param1:Number) : void
      {
         this.§]"C§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§&!s§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            return this.§]"C§;
         }
         return 1;
      }
      
      public function get shape() : §'<§
      {
         return this.§+!j§.shape;
      }
      
      public function dispose() : void
      {
         this.§@f§ = true;
         if(this.mWorld && this.§-#6§)
         {
            this.mWorld.DestroyBody(this.§-#6§);
         }
         if(this.§0v§)
         {
            this.§0v§.dispose();
            this.§0v§ = null;
         }
         this.mWorld = null;
         this.§-#6§ = null;
         this.§&"B§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §3"s§() : b2Body
      {
         return this.§-#6§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§&"B§.§""Y§();
         if(param1 >= _loc3_.§-"^§.x && param1 <= _loc3_.§%!n§.x && param2 >= _loc3_.§-"^§.y && param2 <= _loc3_.§%!n§.y)
         {
            return this.§&"B§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.§3"s§() && this.§3"s§().IsAwake();
      }
      
      public function get §1!E§() : int
      {
         return this.§&!s§;
      }
      
      public function set §1!E§(param1:int) : void
      {
         if(this.§&!s§ == param1)
         {
            return;
         }
         this.§&!s§ = param1;
         if(this.§-#6§)
         {
            this.updateGravityFilter();
            this.§-#6§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§&!s§)
         {
            case -1:
            case GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT:
               this.§-#6§.SetLinearDamping(§96§.§46§);
               this.§-#6§.SetAngularDamping(§96§.§ !y§);
               this.§-#6§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§&!s§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§3"s§().GetPosition().x >= param3 && this.§3"s§().GetPosition().x <= param4 && this.§3"s§().GetPosition().y >= param1 && this.§3"s§().GetPosition().y <= param2;
      }
      
      public function get §=8§() : Number
      {
         return this.§-#6§.GetPosition().x;
      }
      
      public function get §2"K§() : Number
      {
         return this.§-#6§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§'=§) : void
      {
         this.§#"R§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§03§) : void
      {
      }
      
      public function leftSensor(param1:§03§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§?!x§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§?!x§ = null) : void
      {
      }
      
      public function collidedWith(param1:§?!x§) : void
      {
      }
      
      public function collisionEnded(param1:§?!x§) : void
      {
      }
   }
}
