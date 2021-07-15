package §,z§
{
   import §&v§.§9B§;
   import §&v§.§each §;
   import §3!`§.b2Body;
   import §3!`§.b2Fixture;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §@L§.§=b§;
   import §^9§.b2AABB;
   
   public class §<!r§
   {
       
      
      protected var §-#§:b2World;
      
      private var §#e§:Sprite;
      
      protected var §]!_§:b2Fixture;
      
      protected var §<H§:b2Body;
      
      protected var §%-§:§9B§;
      
      protected var §6!6§:Boolean = false;
      
      protected var §?!D§:int = -1;
      
      protected var §74§:Number;
      
      public function §<!r§(param1:Sprite, param2:b2World, param3:§9B§)
      {
         super();
         this.§#e§ = param1;
         this.§-#§ = param2;
         this.§%-§ = param3;
         if(this.§%-§)
         {
            param1.z = this.§%-§.§&!9§();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§#e§;
      }
      
      public function get levelItem() : §9B§
      {
         return this.§%-§;
      }
      
      public function get §8X§() : Boolean
      {
         return this.§6!6§;
      }
      
      public function set § q§(param1:Number) : void
      {
         this.§74§ = param1;
      }
      
      public function §5!y§(param1:Number) : Number
      {
         if(this.§?!D§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            return this.§74§;
         }
         return 1;
      }
      
      public function get shape() : §each §
      {
         return this.§%-§.shape;
      }
      
      public function dispose() : void
      {
         this.§6!6§ = true;
         if(this.§-#§ && this.§<H§)
         {
            this.§-#§.§-7§(this.§<H§);
         }
         if(this.§#e§)
         {
            this.§#e§.dispose();
            this.§#e§ = null;
         }
         this.§-#§ = null;
         this.§<H§ = null;
         this.§]!_§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §^`§() : b2Body
      {
         return this.§<H§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§]!_§.§#!,§();
         if(param1 >= _loc3_.§?J§.x && param1 <= _loc3_.§1^§.x && param2 >= _loc3_.§?J§.y && param2 <= _loc3_.§1^§.y)
         {
            return this.§]!_§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function applyGravity() : Boolean
      {
         return this.§^`§() && this.§^`§().IsAwake();
      }
      
      public function get §5y§() : int
      {
         return this.§?!D§;
      }
      
      public function set §5y§(param1:int) : void
      {
         if(this.§?!D§ == param1)
         {
            return;
         }
         this.§?!D§ = param1;
         if(this.§<H§)
         {
            this.updateGravityFilter();
            this.§<H§.SetAwake(true);
         }
      }
      
      protected function updateGravityFilter() : void
      {
         switch(this.§?!D§)
         {
            case -1:
            case GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT:
               this.§<H§.SetLinearDamping(§=b§.§!!V§);
               this.§<H§.SetAngularDamping(§=b§.§3!e§);
               this.§<H§.SetGravityScale(1);
               return;
            default:
               throw new Error("No implementation exists for gravity filter mask \'" + this.§?!D§ + "\'.");
         }
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§^`§().GetPosition().x >= param3 && this.§^`§().GetPosition().x <= param4 && this.§^`§().GetPosition().y >= param1 && this.§^`§().GetPosition().y <= param2;
      }
      
      public function get §'m§() : Number
      {
         return this.§<H§.GetPosition().x;
      }
      
      public function get §^!P§() : Number
      {
         return this.§<H§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§3!#§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §#!]§(param1:§%!f§) : void
      {
      }
      
      public function §'![§(param1:§%!f§) : void
      {
      }
      
      public function §7+§(param1:§<!r§ = null) : void
      {
      }
      
      public function §"!$§(param1:§<!r§ = null) : void
      {
      }
      
      public function collidedWith(param1:§<!r§) : void
      {
      }
      
      public function collisionEnded(param1:§<!r§) : void
      {
      }
   }
}
