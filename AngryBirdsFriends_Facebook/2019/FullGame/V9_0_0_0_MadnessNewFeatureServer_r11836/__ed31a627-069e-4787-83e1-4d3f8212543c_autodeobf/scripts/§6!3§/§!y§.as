package §6!3§
{
   import §4$E§.b2AABB;
   import §6#H§.Sprite;
   import §>2§.§!!W§;
   import §?!C§.b2Vec2;
   import §?$<§.§4"F§;
   import §?$<§.§?$>§;
   import §@!S§.b2Body;
   import §@!S§.b2Fixture;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §!y§
   {
       
      
      protected var mWorld:b2World;
      
      private var §'#f§:Sprite;
      
      private var §!#H§:Sprite;
      
      private var §-!N§:Number = 0.0;
      
      protected var §@!0§:Number;
      
      protected var §;"^§:b2Fixture;
      
      protected var § "8§:b2Body;
      
      protected var §"#6§:§?$>§;
      
      protected var §%d§:Boolean = false;
      
      protected var §7!]§:int = -1;
      
      protected var §!#!§:Number;
      
      private var §5!8§:Boolean;
      
      public function §!y§(param1:Sprite, param2:b2World, param3:§?$>§)
      {
         this.§@!0§ = §;!U§.§8D§;
         super();
         this.§'#f§ = param1;
         this.mWorld = param2;
         this.§"#6§ = param3;
         if(this.§"#6§)
         {
            this.§6!l§(this.§"#6§.getItemZOrder());
         }
         else
         {
            this.§6!l§(1);
         }
         this.§5!8§ = this.§"#6§.§]!4§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'#f§;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§!#H§;
      }
      
      public function get levelItem() : §?$>§
      {
         return this.§"#6§;
      }
      
      public function get §8"k§() : Boolean
      {
         return this.§%d§;
      }
      
      public function get §7$;§() : Number
      {
         return this.§-!N§;
      }
      
      public function get §9v§() : Boolean
      {
         return this.§5!8§;
      }
      
      public function set §9v§(param1:Boolean) : void
      {
         this.§5!8§ = param1;
      }
      
      public function set §,"4§(param1:Number) : void
      {
         this.§!#!§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§7!]§ == §9"+§.§%#M§)
         {
            return this.§!#!§;
         }
         return 1;
      }
      
      public function get shape() : §4"F§
      {
         return this.§"#6§.shape;
      }
      
      public function §@"u§() : void
      {
         if(!this.§!#H§)
         {
            this.§!#H§ = new Sprite();
         }
      }
      
      public function dispose(param1:Boolean = true) : void
      {
         this.§%d§ = true;
         if(param1)
         {
            if(this.mWorld && this.§ "8§)
            {
               this.mWorld.DestroyBody(this.§ "8§);
            }
         }
         if(this.§'#f§)
         {
            this.§'#f§.dispose();
            this.§'#f§ = null;
         }
         if(this.§!#H§)
         {
            this.§!#H§.dispose();
            this.§!#H§ = null;
         }
         this.mWorld = null;
         this.§ "8§ = null;
         this.§;"^§ = null;
         if(this.§9v§ && §7n§.§ "'§)
         {
            §7n§.§ "'§.checkForLevelEnd();
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.§ "8§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§;"^§.§&#?§();
         if(param1 >= _loc3_.§@`§.x && param1 <= _loc3_.§=!F§.x && param2 >= _loc3_.§@`§.y && param2 <= _loc3_.§=!F§.y)
         {
            return this.§;"^§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.getBody() && this.getBody().IsAwake();
      }
      
      public function get §3!F§() : int
      {
         return this.§7!]§;
      }
      
      public function set §3!F§(param1:int) : void
      {
         if(this.§7!]§ == param1)
         {
            return;
         }
         this.§7!]§ = param1;
         if(this.§ "8§)
         {
            this.updateGravityFilter();
            this.§ "8§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§7!]§)
         {
            case -1:
            case §9"+§.§3!I§:
               this.§ "8§.SetLinearDamping(§!!W§.§>O§);
               this.§ "8§.SetAngularDamping(§!!W§.§7$§);
               this.§ "8§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§7!]§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function get §=!K§() : Number
      {
         return this.§ "8§.GetPosition().x;
      }
      
      public function get §'!T§() : Number
      {
         return this.§ "8§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§8$B§) : void
      {
         if(this.§-!N§ + param1 > Number.MAX_VALUE)
         {
            this.§-!N§ = 0;
         }
         this.§-!N§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§@#v§) : void
      {
      }
      
      public function leftSensor(param1:§@#v§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§!y§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§!y§ = null) : void
      {
      }
      
      public function collidedWith(param1:§!y§) : void
      {
      }
      
      public function collisionEnded(param1:§!y§) : void
      {
      }
      
      public function §>![§() : Number
      {
         return this.§@!0§;
      }
      
      public function §6!l§(param1:Number) : void
      {
         if(param1 == 0)
         {
            param1 = 1;
         }
         this.§@!0§ = param1;
         this.sprite.z = param1;
      }
   }
}
