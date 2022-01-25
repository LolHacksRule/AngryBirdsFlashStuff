package §%Z§
{
   import § 2§.§3t§;
   import §2!s§.§!e§;
   import §2!s§.§4"1§;
   import §7!&§.b2AABB;
   import §9!Z§.b2Body;
   import §9!Z§.b2Fixture;
   import §9!Z§.b2World;
   import §?"'§.b2Vec2;
   import §`!B§.Sprite;
   
   public class §+!F§
   {
       
      
      protected var §?F§:b2World;
      
      private var § C§:Sprite;
      
      private var §65§:Sprite;
      
      private var §>g§:Number = 0.0;
      
      protected var §0q§:b2Fixture;
      
      protected var §4R§:b2Body;
      
      protected var §,!$§:§!e§;
      
      protected var §7<§:Boolean = false;
      
      protected var §^!1§:int = -1;
      
      protected var §"!G§:Number;
      
      public function §+!F§(param1:Sprite, param2:b2World, param3:§!e§)
      {
         super();
         this.§ C§ = param1;
         this.§?F§ = param2;
         this.§,!$§ = param3;
         if(this.§,!$§)
         {
            param1.z = this.§,!$§.§#"!§();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ C§;
      }
      
      public function get §,!&§() : Sprite
      {
         return this.§65§;
      }
      
      public function get levelItem() : §!e§
      {
         return this.§,!$§;
      }
      
      public function get §1"+§() : Boolean
      {
         return this.§7<§;
      }
      
      public function get §54§() : Number
      {
         return this.§>g§;
      }
      
      public function set § !^§(param1:Number) : void
      {
         this.§"!G§ = param1;
      }
      
      public function §'!Q§(param1:Number) : Number
      {
         if(this.§^!1§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            return this.§"!G§;
         }
         return 1;
      }
      
      public function get shape() : §4"1§
      {
         return this.§,!$§.shape;
      }
      
      public function §>!T§() : void
      {
         if(!this.§65§)
         {
            this.§65§ = new Sprite();
         }
      }
      
      public function dispose() : void
      {
         this.§7<§ = true;
         if(this.§?F§ && this.§4R§)
         {
            this.§?F§.§;!9§(this.§4R§);
         }
         if(this.§ C§)
         {
            this.§ C§.dispose();
            this.§ C§ = null;
         }
         if(this.§65§)
         {
            this.§65§.dispose();
            this.§65§ = null;
         }
         this.§?F§ = null;
         this.§4R§ = null;
         this.§0q§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §-!N§() : b2Body
      {
         return this.§4R§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§0q§.§7!9§();
         if(param1 >= _loc3_.§6!§.x && param1 <= _loc3_.§5!'§.x && param2 >= _loc3_.§6!§.y && param2 <= _loc3_.§5!'§.y)
         {
            return this.§0q§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.§-!N§() && this.§-!N§().IsAwake();
      }
      
      public function get §>!e§() : int
      {
         return this.§^!1§;
      }
      
      public function set §>!e§(param1:int) : void
      {
         if(this.§^!1§ == param1)
         {
            return;
         }
         this.§^!1§ = param1;
         if(this.§4R§)
         {
            this.updateGravityFilter();
            this.§4R§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§^!1§)
         {
            case -1:
            case GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT:
               this.§4R§.SetLinearDamping(§3t§.§6!o§);
               this.§4R§.SetAngularDamping(§3t§.§"""§);
               this.§4R§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§^!1§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§-!N§().GetPosition().x >= param3 && this.§-!N§().GetPosition().x <= param4 && this.§-!N§().GetPosition().y >= param1 && this.§-!N§().GetPosition().y <= param2;
      }
      
      public function get §;!=§() : Number
      {
         return this.§4R§.GetPosition().x;
      }
      
      public function get §'!v§() : Number
      {
         return this.§4R§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§8!m§) : void
      {
         this.§>g§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function § F§(param1:§&"3§) : void
      {
      }
      
      public function §5=§(param1:§&"3§) : void
      {
      }
      
      public function §?"$§(param1:§+!F§ = null) : void
      {
      }
      
      public function §9I§(param1:§+!F§ = null) : void
      {
      }
      
      public function collidedWith(param1:§+!F§) : void
      {
      }
      
      public function collisionEnded(param1:§+!F§) : void
      {
      }
   }
}
