package §-!!§
{
   import § !D§.§;#W§;
   import §!6§.Sprite;
   import §0J§.b2AABB;
   import §8#t§.b2Body;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §=!2§.§%"T§;
   import §?§.§+#c§;
   import §?§.§,Y§;
   import §`# §.b2Vec2;
   
   public class §1#B§
   {
       
      
      protected var mWorld:b2World;
      
      private var § U§:Sprite;
      
      private var §3#l§:Sprite;
      
      private var §5#w§:Number = 0.0;
      
      protected var §]!l§:Number;
      
      protected var §2"T§:b2Fixture;
      
      protected var §=#w§:b2Body;
      
      protected var §!!H§:§,Y§;
      
      protected var §-"Z§:Boolean = false;
      
      protected var §<@§:int = -1;
      
      protected var §;S§:Number;
      
      private var §-d§:Boolean;
      
      public function §1#B§(param1:Sprite, param2:b2World, param3:§,Y§)
      {
         this.§]!l§ = §8"J§.§9!=§;
         super();
         this.§ U§ = param1;
         this.mWorld = param2;
         this.§!!H§ = param3;
         if(this.§!!H§)
         {
            this.§,4§(this.§!!H§.getItemZOrder());
         }
         else
         {
            this.§,4§(1);
         }
         this.§-d§ = this.§!!H§.§#$3§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ U§;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§3#l§;
      }
      
      public function get levelItem() : §,Y§
      {
         return this.§!!H§;
      }
      
      public function get §]"x§() : Boolean
      {
         return this.§-"Z§;
      }
      
      public function get §>"&§() : Number
      {
         return this.§5#w§;
      }
      
      public function get §;#"§() : Boolean
      {
         return this.§-d§;
      }
      
      public function set §;#"§(param1:Boolean) : void
      {
         this.§-d§ = param1;
      }
      
      public function set §'!d§(param1:Number) : void
      {
         this.§;S§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§<@§ == §-#L§.§>!@§)
         {
            return this.§;S§;
         }
         return 1;
      }
      
      public function get shape() : §+#c§
      {
         return this.§!!H§.shape;
      }
      
      public function §+Q§() : void
      {
         if(!this.§3#l§)
         {
            this.§3#l§ = new Sprite();
         }
      }
      
      public function dispose(param1:Boolean = true) : void
      {
         this.§-"Z§ = true;
         if(param1)
         {
            if(this.mWorld && this.§=#w§)
            {
               this.mWorld.DestroyBody(this.§=#w§);
            }
         }
         if(this.§ U§)
         {
            this.§ U§.dispose();
            this.§ U§ = null;
         }
         if(this.§3#l§)
         {
            this.§3#l§.dispose();
            this.§3#l§ = null;
         }
         this.mWorld = null;
         this.§=#w§ = null;
         this.§2"T§ = null;
         if(this.§;#"§ && §%"T§.§+"M§)
         {
            §%"T§.§+"M§.checkForLevelEnd();
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.§=#w§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§2"T§.§<4§();
         if(param1 >= _loc3_.§3"]§.x && param1 <= _loc3_.§='§.x && param2 >= _loc3_.§3"]§.y && param2 <= _loc3_.§='§.y)
         {
            return this.§2"T§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.getBody() && this.getBody().IsAwake();
      }
      
      public function get §&"X§() : int
      {
         return this.§<@§;
      }
      
      public function set §&"X§(param1:int) : void
      {
         if(this.§<@§ == param1)
         {
            return;
         }
         this.§<@§ = param1;
         if(this.§=#w§)
         {
            this.updateGravityFilter();
            this.§=#w§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§<@§)
         {
            case -1:
            case §-#L§.§8"o§:
               this.§=#w§.SetLinearDamping(§;#W§.§-!=§);
               this.§=#w§.SetAngularDamping(§;#W§.§[N§);
               this.§=#w§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§<@§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function get § $!§() : Number
      {
         return this.§=#w§.GetPosition().x;
      }
      
      public function get §2#?§() : Number
      {
         return this.§=#w§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§ #'§) : void
      {
         if(this.§5#w§ + param1 > Number.MAX_VALUE)
         {
            this.§5#w§ = 0;
         }
         this.§5#w§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§0!N§) : void
      {
      }
      
      public function leftSensor(param1:§0!N§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§1#B§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§1#B§ = null) : void
      {
      }
      
      public function collidedWith(param1:§1#B§) : void
      {
      }
      
      public function collisionEnded(param1:§1#B§) : void
      {
      }
      
      public function §["e§() : Number
      {
         return this.§]!l§;
      }
      
      public function §,4§(param1:Number) : void
      {
         if(param1 == 0)
         {
            param1 = 1;
         }
         this.§]!l§ = param1;
         this.sprite.z = param1;
      }
   }
}
