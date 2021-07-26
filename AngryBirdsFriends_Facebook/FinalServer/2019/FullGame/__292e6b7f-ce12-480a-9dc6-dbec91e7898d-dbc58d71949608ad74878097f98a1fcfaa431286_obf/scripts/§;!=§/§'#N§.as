package §;!=§
{
   import §#g§.§7#E§;
   import §'#K§.b2Body;
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §,#E§.b2AABB;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §8#K§.§&2§;
   import §8#K§.§46§;
   import §?#z§.§]$?§;
   
   public class §'#N§
   {
       
      
      protected var mWorld:b2World;
      
      private var §&"h§:Sprite;
      
      private var §9"c§:Sprite;
      
      private var §^#'§:Number = 0.0;
      
      protected var §0+§:Number;
      
      protected var §0>§:b2Fixture;
      
      protected var §2"j§:b2Body;
      
      protected var §]h§:§&2§;
      
      protected var §4!s§:Boolean = false;
      
      protected var §`$,§:int = -1;
      
      protected var §+"4§:Number;
      
      private var §2!+§:Boolean;
      
      public function §'#N§(param1:Sprite, param2:b2World, param3:§&2§)
      {
         this.§0+§ = §>"G§.§="[§;
         super();
         this.§&"h§ = param1;
         this.mWorld = param2;
         this.§]h§ = param3;
         if(this.§]h§)
         {
            this.§%#>§(this.§]h§.getItemZOrder());
         }
         else
         {
            this.§%#>§(1);
         }
         this.§2!+§ = this.§]h§.§%#%§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&"h§;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§9"c§;
      }
      
      public function get levelItem() : §&2§
      {
         return this.§]h§;
      }
      
      public function get §!#T§() : Boolean
      {
         return this.§4!s§;
      }
      
      public function get §1!j§() : Number
      {
         return this.§^#'§;
      }
      
      public function get §3!C§() : Boolean
      {
         return this.§2!+§;
      }
      
      public function set §3!C§(param1:Boolean) : void
      {
         this.§2!+§ = param1;
      }
      
      public function set §^"e§(param1:Number) : void
      {
         this.§+"4§ = param1;
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         if(this.§`$,§ == §"#-§.§5$;§)
         {
            return this.§+"4§;
         }
         return 1;
      }
      
      public function get shape() : §46§
      {
         return this.§]h§.shape;
      }
      
      public function §"<§() : void
      {
         if(!this.§9"c§)
         {
            this.§9"c§ = new Sprite();
         }
      }
      
      public function dispose(param1:Boolean = true) : void
      {
         this.§4!s§ = true;
         if(param1)
         {
            if(this.mWorld && this.§2"j§)
            {
               this.mWorld.DestroyBody(this.§2"j§);
            }
         }
         if(this.§&"h§)
         {
            this.§&"h§.dispose();
            this.§&"h§ = null;
         }
         if(this.§9"c§)
         {
            this.§9"c§.dispose();
            this.§9"c§ = null;
         }
         this.mWorld = null;
         this.§2"j§ = null;
         this.§0>§ = null;
         if(this.§3!C§ && §]$?§.§;r§)
         {
            §]$?§.§;r§.checkForLevelEnd();
         }
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function getBody() : b2Body
      {
         return this.§2"j§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§0>§.§^#3§();
         if(param1 >= _loc3_.§##N§.x && param1 <= _loc3_.§#r§.x && param2 >= _loc3_.§##N§.y && param2 <= _loc3_.§#r§.y)
         {
            return this.§0>§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.getBody() && this.getBody().IsAwake();
      }
      
      public function get §@#z§() : int
      {
         return this.§`$,§;
      }
      
      public function set §@#z§(param1:int) : void
      {
         if(this.§`$,§ == param1)
         {
            return;
         }
         this.§`$,§ = param1;
         if(this.§2"j§)
         {
            this.updateGravityFilter();
            this.§2"j§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§`$,§)
         {
            case -1:
            case §"#-§.§9$ §:
               this.§2"j§.SetLinearDamping(§7#E§.§=!V§);
               this.§2"j§.SetAngularDamping(§7#E§.§ "[§);
               this.§2"j§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§`$,§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.getBody().GetPosition().x >= param3 && this.getBody().GetPosition().x <= param4 && this.getBody().GetPosition().y >= param1 && this.getBody().GetPosition().y <= param2;
      }
      
      public function get §88§() : Number
      {
         return this.§2"j§.GetPosition().x;
      }
      
      public function get §]![§() : Number
      {
         return this.§2"j§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§]!m§) : void
      {
         if(this.§^#'§ + param1 > Number.MAX_VALUE)
         {
            this.§^#'§ = 0;
         }
         this.§^#'§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§`"4§) : void
      {
      }
      
      public function leftSensor(param1:§`"4§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§'#N§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§'#N§ = null) : void
      {
      }
      
      public function collidedWith(param1:§'#N§) : void
      {
      }
      
      public function collisionEnded(param1:§'#N§) : void
      {
      }
      
      public function §-0§() : Number
      {
         return this.§0+§;
      }
      
      public function §%#>§(param1:Number) : void
      {
         if(param1 == 0)
         {
            param1 = 1;
         }
         this.§0+§ = param1;
         this.sprite.z = param1;
      }
   }
}
