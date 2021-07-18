package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2Body;
   import §'!&§.b2Fixture;
   import §'!&§.b2World;
   import §3c§.b2AABB;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §<!=§
   {
       
      
      protected var mWorld:b2World;
      
      private var §]!$§:Sprite;
      
      protected var § ]§:b2Fixture;
      
      protected var §'"F§:b2Body;
      
      protected var §7!h§:§8X§;
      
      public function §<!=§(param1:Sprite, param2:b2World, param3:§8X§)
      {
         super();
         this.§]!$§ = param1;
         this.mWorld = param2;
         this.§7!h§ = param3;
         if(this.§7!h§)
         {
            param1.z = this.§7!h§.getItemZOrder();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function get levelItem() : §8X§
      {
         return this.§7!h§;
      }
      
      public function dispose() : void
      {
         if(this.mWorld && this.§'"F§)
         {
            this.mWorld.§3a§(this.§'"F§);
         }
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
            this.§]!$§ = null;
         }
         this.mWorld = null;
         this.§'"F§ = null;
         this.§ ]§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §^!z§() : b2Body
      {
         return this.§'"F§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§ ]§.§2!!§();
         if(param1 >= _loc3_.§<!@§.x && param1 <= _loc3_.§2!1§.x && param2 >= _loc3_.§<!@§.y && param2 <= _loc3_.§2!1§.y)
         {
            return this.§ ]§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§^!z§().GetPosition().x >= param3 && this.§^!z§().GetPosition().x <= param4 && this.§^!z§().GetPosition().y >= param1 && this.§^!z§().GetPosition().y <= param2;
      }
      
      public function get §=!J§() : Number
      {
         return this.§'"F§.GetPosition().x;
      }
      
      public function get §;!U§() : Number
      {
         return this.§'"F§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§;U§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§3=§) : void
      {
      }
      
      public function leftSensor(param1:§3=§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§<!=§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§<!=§ = null) : void
      {
      }
      
      public function §4!`§(param1:§<!=§) : void
      {
      }
   }
}
