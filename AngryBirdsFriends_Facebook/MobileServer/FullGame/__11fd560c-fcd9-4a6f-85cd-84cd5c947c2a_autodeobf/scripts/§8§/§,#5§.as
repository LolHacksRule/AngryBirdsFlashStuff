package §8§#8
{
   import § "%§.b2Vec2;
   import §'"$§.b2AABB;
   import §4"O§.b2Body;
   import §4"O§.b2Fixture;
   import §4"O§.b2World;
   import §8"L§.§!!C§;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §@0§.§1§;
   import §^"S§.Sprite;
   
   public class §,#5§
   {
       
      
      protected var mWorld:b2World;
      
      private var §4"D§:Sprite;
      
      private var §;"J§:Sprite;
      
      private var §7$=§:Number = 0.0;
      
      protected var §0#]§:Number;
      
      protected var §'"K§:b2Fixture;
      
      protected var §=#D§:b2Body;
      
      protected var §'!i§:§4U§;
      
      protected var §7$?§:Boolean = false;
      
      protected var §^!2§:int = -1;
      
      protected var §@"9§:Number;
      
      private var §2#V§:Boolean;
      
      public function §,#5§(param1:Sprite, param2:b2World, param3:§4U§)
      {
         this.§0#]§ = §4!y§.§"!l§;
         super();
         this.§4"D§ = param1;
         this.mWorld = param2;
         this.§'!i§ = param3;
         if(this.§'!i§)
         {
            this.§%"r§(this.§'!i§.getItemZOrder());
         }
         else
         {
            this.§%"r§(1);
         }
         this.§2#V§ = this.§'!i§.§<"Q§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§4"D§;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§;"J§;
      }
      
      public function get levelItem() : §4U§
      {
         return this.§'!i§;
      }
      
      public function get §8#@§() : Boolean
      {
         return this.§7$?§;
      }
      
      public function get §8G§() : Number
      {
         return this.§7$=§;
      }
      
      public function get §3#,§() : Boolean
      {
         return this.§2#V§;
      }
      
      public function set §3#,§(param1:Boolean) : void
      {
         this.§2#V§ = param1;
      }
      
      public function set §?"g§(param1:Number) : void
      {
         this.§@"9§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§^!2§ == §3"8§.§%#I§)
         {
            return this.§@"9§;
         }
         return 1;
      }
      
      public function get shape() : §!!C§
      {
         return this.§'!i§.shape;
      }
      
      public function §&##§() : void
      {
         if(!this.§;"J§)
         {
            this.§;"J§ = new Sprite();
         }
      }
      
      public function dispose(param1:Boolean = true) : void
      {
         this.§7$?§ = true;
         if(param1)
         {
            if(this.mWorld && this.§=#D§)
            {
               this.mWorld.DestroyBody(this.§=#D§);
            }
         }
         if(this.§4"D§)
         {
            this.§4"D§.dispose();
            this.§4"D§ = null;
         }
         if(this.§;"J§)
         {
            this.§;"J§.dispose();
            this.§;"J§ = null;
         }
         this.mWorld = null;
         this.§=#D§ = null;
         this.§'"K§ = null;
         if(this.§3#,§ && §3#U§.§8I§)
         {
            §3#U§.§8I§.checkForLevelEnd();
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.§=#D§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§'"K§.§?$@§();
         if(param1 >= _loc3_.§]#b§.x && param1 <= _loc3_.§!O§.x && param2 >= _loc3_.§]#b§.y && param2 <= _loc3_.§!O§.y)
         {
            return this.§'"K§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.getBody() && this.getBody().IsAwake();
      }
      
      public function get §>"H§() : int
      {
         return this.§^!2§;
      }
      
      public function set §>"H§(param1:int) : void
      {
         if(this.§^!2§ == param1)
         {
            return;
         }
         this.§^!2§ = param1;
         if(this.§=#D§)
         {
            this.updateGravityFilter();
            this.§=#D§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§^!2§)
         {
            case -1:
            case §3"8§.§8";§:
               this.§=#D§.SetLinearDamping(§1#7§.§'$1§);
               this.§=#D§.SetAngularDamping(§1#7§.§+#n§);
               this.§=#D§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§^!2§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function get §;d§() : Number
      {
         return this.§=#D§.GetPosition().x;
      }
      
      public function get §["t§() : Number
      {
         return this.§=#D§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§&#V§) : void
      {
         if(this.§7$=§ + param1 > Number.MAX_VALUE)
         {
            this.§7$=§ = 0;
         }
         this.§7$=§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§7!0§) : void
      {
      }
      
      public function leftSensor(param1:§7!0§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§,#5§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§,#5§ = null) : void
      {
      }
      
      public function collidedWith(param1:§,#5§) : void
      {
      }
      
      public function collisionEnded(param1:§,#5§) : void
      {
      }
      
      public function §2$5§() : Number
      {
         return this.§0#]§;
      }
      
      public function §%"r§(param1:Number) : void
      {
         if(param1 == 0)
         {
            param1 = 1;
         }
         this.§0#]§ = param1;
         this.sprite.z = param1;
      }
   }
}
