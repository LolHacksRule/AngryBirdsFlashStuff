package §6"R§
{
   import §%!#§.b2AABB;
   import §1"s§.Sprite;
   import §1x§.b2Body;
   import §1x§.b2Fixture;
   import §1x§.b2World;
   import §5!q§.§<"n§;
   import §>P§.§=!,§;
   import §>P§.§?"Q§;
   import §^>§.b2Vec2;
   
   public class §!z§
   {
       
      
      protected var mWorld:b2World;
      
      private var § "6§:Sprite;
      
      private var §?B§:Number = 0.0;
      
      protected var §<!$§:b2Fixture;
      
      protected var §#"R§:b2Body;
      
      protected var §-!f§:§=!,§;
      
      protected var §&"W§:Boolean = false;
      
      protected var §=2§:int = -1;
      
      protected var §[!w§:Number;
      
      public function §!z§(param1:Sprite, param2:b2World, param3:§=!,§)
      {
         super();
         this.§ "6§ = param1;
         this.mWorld = param2;
         this.§-!f§ = param3;
         if(this.§-!f§)
         {
            param1.z = this.§-!f§.getItemZOrder();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "6§;
      }
      
      public function get levelItem() : §=!,§
      {
         return this.§-!f§;
      }
      
      public function get §^#!§() : Boolean
      {
         return this.§&"W§;
      }
      
      public function get §-=§() : Number
      {
         return this.§?B§;
      }
      
      public function set §"d§(param1:Number) : void
      {
         this.§[!w§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§=2§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            return this.§[!w§;
         }
         return 1;
      }
      
      public function get shape() : §?"Q§
      {
         return this.§-!f§.shape;
      }
      
      public function dispose() : void
      {
         this.§&"W§ = true;
         if(this.mWorld && this.§#"R§)
         {
            this.mWorld.DestroyBody(this.§#"R§);
         }
         if(this.§ "6§)
         {
            this.§ "6§.dispose();
            this.§ "6§ = null;
         }
         this.mWorld = null;
         this.§#"R§ = null;
         this.§<!$§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §?"Z§() : b2Body
      {
         return this.§#"R§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§<!$§.§++§();
         if(param1 >= _loc3_.§5-§.x && param1 <= _loc3_.§ "M§.x && param2 >= _loc3_.§5-§.y && param2 <= _loc3_.§ "M§.y)
         {
            return this.§<!$§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.§?"Z§() && this.§?"Z§().IsAwake();
      }
      
      public function get §+s§() : int
      {
         return this.§=2§;
      }
      
      public function set §+s§(param1:int) : void
      {
         if(this.§=2§ == param1)
         {
            return;
         }
         this.§=2§ = param1;
         if(this.§#"R§)
         {
            this.updateGravityFilter();
            this.§#"R§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§=2§)
         {
            case -1:
            case GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT:
               this.§#"R§.SetLinearDamping(§<"n§.§4!>§);
               this.§#"R§.SetAngularDamping(§<"n§.§0"-§);
               this.§#"R§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§=2§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?"Z§().GetPosition().x >= param3 && this.§?"Z§().GetPosition().x <= param4 && this.§?"Z§().GetPosition().y >= param1 && this.§?"Z§().GetPosition().y <= param2;
      }
      
      public function get §1#§() : Number
      {
         return this.§#"R§.GetPosition().x;
      }
      
      public function get §6#2§() : Number
      {
         return this.§#"R§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§""M§) : void
      {
         this.§?B§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§-t§) : void
      {
      }
      
      public function leftSensor(param1:§-t§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§!z§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§!z§ = null) : void
      {
      }
      
      public function collidedWith(param1:§!z§) : void
      {
      }
      
      public function collisionEnded(param1:§!z§) : void
      {
      }
   }
}
