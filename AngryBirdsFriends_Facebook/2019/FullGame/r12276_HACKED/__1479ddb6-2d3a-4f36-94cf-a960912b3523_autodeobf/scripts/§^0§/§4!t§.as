package §^0§
{
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §-!j§.§%!a§;
   import §-!j§.§-"8§;
   import §3#h§.b2Body;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9$A§.b2AABB;
   import §?$#§.§&$0§;
   
   public class §4!t§
   {
       
      
      protected var mWorld:b2World;
      
      private var §]#+§:Sprite;
      
      private var §6u§:Sprite;
      
      private var §8!y§:Number = 0.0;
      
      protected var §=!3§:Number;
      
      protected var §?#B§:b2Fixture;
      
      protected var §%#b§:b2Body;
      
      protected var §8!'§:§-"8§;
      
      protected var §'$E§:Boolean = false;
      
      protected var §###§:int = -1;
      
      protected var §^"§:Number;
      
      private var §@"0§:Boolean;
      
      public function §4!t§(param1:Sprite, param2:b2World, param3:§-"8§)
      {
         this.§=!3§ = §=Q§.§6"c§;
         super();
         this.§]#+§ = param1;
         this.mWorld = param2;
         this.§8!'§ = param3;
         if(this.§8!'§)
         {
            this.§ #o§(this.§8!'§.getItemZOrder());
         }
         else
         {
            this.§ #o§(1);
         }
         this.§@"0§ = this.§8!'§.§"B§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]#+§;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§6u§;
      }
      
      public function get levelItem() : §-"8§
      {
         return this.§8!'§;
      }
      
      public function get §%1§() : Boolean
      {
         return this.§'$E§;
      }
      
      public function get §<K§() : Number
      {
         return this.§8!y§;
      }
      
      public function get §+"h§() : Boolean
      {
         return this.§@"0§;
      }
      
      public function set §+"h§(param1:Boolean) : void
      {
         this.§@"0§ = param1;
      }
      
      public function set §+"%§(param1:Number) : void
      {
         this.§^"§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§###§ == §`"p§.§'$0§)
         {
            return this.§^"§;
         }
         return 1;
      }
      
      public function get shape() : §%!a§
      {
         return this.§8!'§.shape;
      }
      
      public function §;"q§() : void
      {
         if(!this.§6u§)
         {
            this.§6u§ = new Sprite();
         }
      }
      
      public function dispose(param1:Boolean = true) : void
      {
         this.§'$E§ = true;
         if(param1)
         {
            if(this.mWorld && this.§%#b§)
            {
               this.mWorld.DestroyBody(this.§%#b§);
            }
         }
         if(this.§]#+§)
         {
            this.§]#+§.dispose();
            this.§]#+§ = null;
         }
         if(this.§6u§)
         {
            this.§6u§.dispose();
            this.§6u§ = null;
         }
         this.mWorld = null;
         this.§%#b§ = null;
         this.§?#B§ = null;
         if(this.§+"h§ && §+!p§.§-#W§)
         {
            §+!p§.§-#W§.checkForLevelEnd();
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.§%#b§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§?#B§.§4!E§();
         if(param1 >= _loc3_.§4#1§.x && param1 <= _loc3_.§,!W§.x && param2 >= _loc3_.§4#1§.y && param2 <= _loc3_.§,!W§.y)
         {
            return this.§?#B§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.getBody() && this.getBody().IsAwake();
      }
      
      public function get §<!x§() : int
      {
         return this.§###§;
      }
      
      public function set §<!x§(param1:int) : void
      {
         if(this.§###§ == param1)
         {
            return;
         }
         this.§###§ = param1;
         if(this.§%#b§)
         {
            this.updateGravityFilter();
            this.§%#b§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§###§)
         {
            case -1:
            case §`"p§.§1!"§:
               this.§%#b§.SetLinearDamping(§&$0§.§7#-§);
               this.§%#b§.SetAngularDamping(§&$0§.§^" §);
               this.§%#b§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§###§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function get §]K§() : Number
      {
         return this.§%#b§.GetPosition().x;
      }
      
      public function get §7"u§() : Number
      {
         return this.§%#b§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§>"T§) : void
      {
         if(this.§8!y§ + param1 > Number.MAX_VALUE)
         {
            this.§8!y§ = 0;
         }
         this.§8!y§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§5;§) : void
      {
      }
      
      public function leftSensor(param1:§5;§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§4!t§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§4!t§ = null) : void
      {
      }
      
      public function collidedWith(param1:§4!t§) : void
      {
      }
      
      public function collisionEnded(param1:§4!t§) : void
      {
      }
      
      public function §,"L§() : Number
      {
         return this.§=!3§;
      }
      
      public function § #o§(param1:Number) : void
      {
         if(param1 == 0)
         {
            param1 = 1;
         }
         this.§=!3§ = param1;
         this.sprite.z = param1;
      }
   }
}
