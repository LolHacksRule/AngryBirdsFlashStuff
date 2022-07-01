package §@!"§
{
   import §!§.b2AABB;
   import §%8§.§@-§;
   import §%8§.§[_§;
   import §0"!§.b2Body;
   import §0"!§.b2Fixture;
   import §0"!§.b2World;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§&z§;
   
   public class §#!v§
   {
       
      
      protected var §^d§:b2World;
      
      private var §&%§:Sprite;
      
      private var §]3§:Sprite;
      
      private var §<L§:Number = 0.0;
      
      protected var §," §:b2Fixture;
      
      protected var §<!@§:b2Body;
      
      protected var §93§:§@-§;
      
      protected var §,! §:Boolean = false;
      
      protected var §>N§:int = -1;
      
      protected var § do§:Number;
      
      public function §#!v§(param1:Sprite, param2:b2World, param3:§@-§)
      {
         super();
         this.§&%§ = param1;
         this.§^d§ = param2;
         this.§93§ = param3;
         if(this.§93§)
         {
            param1.z = this.§93§.§8!D§();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§&%§;
      }
      
      public function get §]![§() : Sprite
      {
         return this.§]3§;
      }
      
      public function get levelItem() : §@-§
      {
         return this.§93§;
      }
      
      public function get §#!4§() : Boolean
      {
         return this.§,! §;
      }
      
      public function get §#e§() : Number
      {
         return this.§<L§;
      }
      
      public function set §-" §(param1:Number) : void
      {
         this.§ do§ = param1;
      }
      
      public function §3h§(param1:Number) : Number
      {
         if(this.§>N§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            return this.§ do§;
         }
         return 1;
      }
      
      public function get shape() : §[_§
      {
         return this.§93§.shape;
      }
      
      public function §^"6§() : void
      {
         if(!this.§]3§)
         {
            this.§]3§ = new Sprite();
         }
      }
      
      public function dispose() : void
      {
         this.§,! § = true;
         if(this.§^d§ && this.§<!@§)
         {
            this.§^d§.§@W§(this.§<!@§);
         }
         if(this.§&%§)
         {
            this.§&%§.dispose();
            this.§&%§ = null;
         }
         if(this.§]3§)
         {
            this.§]3§.dispose();
            this.§]3§ = null;
         }
         this.§^d§ = null;
         this.§<!@§ = null;
         this.§," § = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §!!I§() : b2Body
      {
         return this.§<!@§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§," §.§5=§();
         if(param1 >= _loc3_.§&1§.x && param1 <= _loc3_.§3!E§.x && param2 >= _loc3_.§&1§.y && param2 <= _loc3_.§3!E§.y)
         {
            return this.§," §.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.§!!I§() && this.§!!I§().IsAwake();
      }
      
      public function get §<v§() : int
      {
         return this.§>N§;
      }
      
      public function set §<v§(param1:int) : void
      {
         if(this.§>N§ == param1)
         {
            return;
         }
         this.§>N§ = param1;
         if(this.§<!@§)
         {
            this.updateGravityFilter();
            this.§<!@§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§>N§)
         {
            case -1:
            case GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT:
               this.§<!@§.SetLinearDamping(§&z§.§22§);
               this.§<!@§.SetAngularDamping(§&z§.§#!R§);
               this.§<!@§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§>N§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§!!I§().GetPosition().x >= param3 && this.§!!I§().GetPosition().x <= param4 && this.§!!I§().GetPosition().y >= param1 && this.§!!I§().GetPosition().y <= param2;
      }
      
      public function get §-"-§() : Number
      {
         return this.§<!@§.GetPosition().x;
      }
      
      public function get §;!1§() : Number
      {
         return this.§<!@§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§`!m§) : void
      {
         this.§<L§ += param1;
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §9!2§(param1:§+!z§) : void
      {
      }
      
      public function §6n§(param1:§+!z§) : void
      {
      }
      
      public function §8"0§(param1:§#!v§ = null) : void
      {
      }
      
      public function §#$§(param1:§#!v§ = null) : void
      {
      }
      
      public function collidedWith(param1:§#!v§) : void
      {
      }
      
      public function collisionEnded(param1:§#!v§) : void
      {
      }
   }
}
