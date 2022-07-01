package §=!`§
{
   import §!;§.b2AABB;
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2Body;
   import §,v§.b2Fixture;
   import §,v§.b2World;
   import §-!A§.b2Vec2;
   
   public class §=6§
   {
       
      
      protected var §'!7§:b2World;
      
      private var §2!&§:Sprite;
      
      protected var §4"#§:b2Fixture;
      
      protected var §6!`§:b2Body;
      
      protected var §<9§:§9!n§;
      
      public function §=6§(param1:Sprite, param2:b2World, param3:§9!n§)
      {
         super();
         this.§2!&§ = param1;
         this.§'!7§ = param2;
         this.§<9§ = param3;
         if(this.§<9§)
         {
            param1.z = this.§<9§.§-[§();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§2!&§;
      }
      
      public function get levelItem() : §9!n§
      {
         return this.§<9§;
      }
      
      public function dispose() : void
      {
         if(this.§'!7§ && this.§6!`§)
         {
            this.§'!7§.§2a§(this.§6!`§);
         }
         if(this.§2!&§)
         {
            this.§2!&§.dispose();
            this.§2!&§ = null;
         }
         this.§'!7§ = null;
         this.§6!`§ = null;
         this.§4"#§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §^",§() : b2Body
      {
         return this.§6!`§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§4"#§.§?!u§();
         if(param1 >= _loc3_.§#!i§.x && param1 <= _loc3_.§4`§.x && param2 >= _loc3_.§#!i§.y && param2 <= _loc3_.§4`§.y)
         {
            return this.§4"#§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§^",§().GetPosition().x >= param3 && this.§^",§().GetPosition().x <= param4 && this.§^",§().GetPosition().y >= param1 && this.§^",§().GetPosition().y <= param2;
      }
      
      public function get §5B§() : Number
      {
         return this.§6!`§.GetPosition().x;
      }
      
      public function get §7"#§() : Number
      {
         return this.§6!`§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§'`§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §5! §(param1:§0!K§) : void
      {
      }
      
      public function §]!y§(param1:§0!K§) : void
      {
      }
      
      public function §4_§(param1:§=6§ = null) : void
      {
      }
      
      public function §]!$§(param1:§=6§ = null) : void
      {
      }
      
      public function collidedWith(param1:§=6§) : void
      {
      }
      
      public function collisionEnded(param1:§=6§) : void
      {
      }
   }
}
