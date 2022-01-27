package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2Body;
   import §;`§.b2Fixture;
   import §;`§.b2World;
   import §>!m§.b2AABB;
   import §[!f§.b2Vec2;
   
   public class §>q§
   {
       
      
      protected var mWorld:b2World;
      
      private var §9A§:Sprite;
      
      protected var §!O§:b2Fixture;
      
      protected var § y§:b2Body;
      
      protected var §!!9§:§<!r§;
      
      public function §>q§(param1:Sprite, param2:b2World, param3:§<!r§)
      {
         super();
         this.§9A§ = param1;
         this.mWorld = param2;
         this.§!!9§ = param3;
         if(this.§!!9§)
         {
            param1.z = this.§!!9§.getItemZOrder();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§9A§;
      }
      
      public function get levelItem() : §<!r§
      {
         return this.§!!9§;
      }
      
      public function dispose() : void
      {
         if(this.mWorld && this.§ y§)
         {
            this.mWorld.§8"C§(this.§ y§);
         }
         if(this.§9A§)
         {
            this.§9A§.dispose();
            this.§9A§ = null;
         }
         this.mWorld = null;
         this.§ y§ = null;
         this.§!O§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §9B§() : b2Body
      {
         return this.§ y§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§!O§.§@"+§();
         if(param1 >= _loc3_.§5!v§.x && param1 <= _loc3_.§4r§.x && param2 >= _loc3_.§5!v§.y && param2 <= _loc3_.§4r§.y)
         {
            return this.§!O§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§9B§().GetPosition().x >= param3 && this.§9B§().GetPosition().x <= param4 && this.§9B§().GetPosition().y >= param1 && this.§9B§().GetPosition().y <= param2;
      }
      
      public function get §5!z§() : Number
      {
         return this.§ y§.GetPosition().x;
      }
      
      public function get §1[§() : Number
      {
         return this.§ y§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§0!5§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§<!&§) : void
      {
      }
      
      public function leftSensor(param1:§<!&§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§>q§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§>q§ = null) : void
      {
      }
      
      public function §,>§(param1:§>q§) : void
      {
      }
   }
}
