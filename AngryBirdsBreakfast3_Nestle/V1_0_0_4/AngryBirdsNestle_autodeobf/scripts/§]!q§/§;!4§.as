package §]!q§
{
   import §,P§.b2AABB;
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §5!7§.§3!Y§;
   import §9"5§.b2Body;
   import §9"5§.b2Fixture;
   import §9"5§.b2World;
   
   public class §;!4§
   {
       
      
      protected var §,'§:b2World;
      
      private var §]!c§:Sprite;
      
      protected var §1V§:b2Fixture;
      
      protected var §+!R§:b2Body;
      
      protected var §9!w§:§3!Y§;
      
      public function §;!4§(param1:Sprite, param2:b2World, param3:§3!Y§)
      {
         super();
         this.§]!c§ = param1;
         this.§,'§ = param2;
         this.§9!w§ = param3;
         if(this.§9!w§)
         {
            param1.z = this.§9!w§.§9M§();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!c§;
      }
      
      public function get levelItem() : §3!Y§
      {
         return this.§9!w§;
      }
      
      public function dispose() : void
      {
         if(this.§,'§ && this.§+!R§)
         {
            this.§,'§.§>[§(this.§+!R§);
         }
         if(this.§]!c§)
         {
            this.§]!c§.dispose();
            this.§]!c§ = null;
         }
         this.§,'§ = null;
         this.§+!R§ = null;
         this.§1V§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §4!7§() : b2Body
      {
         return this.§+!R§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§1V§.§4!y§();
         if(param1 >= _loc3_.§=V§.x && param1 <= _loc3_.§;!T§.x && param2 >= _loc3_.§=V§.y && param2 <= _loc3_.§;!T§.y)
         {
            return this.§1V§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§4!7§().GetPosition().x >= param3 && this.§4!7§().GetPosition().x <= param4 && this.§4!7§().GetPosition().y >= param1 && this.§4!7§().GetPosition().y <= param2;
      }
      
      public function get §4"-§() : Number
      {
         return this.§+!R§.GetPosition().x;
      }
      
      public function get §7!"§() : Number
      {
         return this.§+!R§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§5z§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §#!6§(param1:§4C§) : void
      {
      }
      
      public function §>!,§(param1:§4C§) : void
      {
      }
      
      public function §1!E§(param1:§;!4§ = null) : void
      {
      }
      
      public function §9!@§(param1:§;!4§ = null) : void
      {
      }
      
      public function collidedWith(param1:§;!4§) : void
      {
      }
      
      public function collisionEnded(param1:§;!4§) : void
      {
      }
   }
}
