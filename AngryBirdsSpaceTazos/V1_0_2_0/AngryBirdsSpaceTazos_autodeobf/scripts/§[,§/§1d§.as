package §[,§
{
   import §#!X§.b2Body;
   import §#!X§.b2Fixture;
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §3m§.b2AABB;
   import §;"=§.§]"<§;
   
   public class §1d§
   {
       
      
      protected var mWorld:b2World;
      
      private var §>#§:Sprite;
      
      protected var §<'§:b2Fixture;
      
      protected var §&p§:b2Body;
      
      protected var §00§:§]"<§;
      
      public function §1d§(param1:Sprite, param2:b2World, param3:§]"<§)
      {
         super();
         this.§>#§ = param1;
         this.mWorld = param2;
         this.§00§ = param3;
         if(this.§00§)
         {
            param1.z = this.§00§.getItemZOrder();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§>#§;
      }
      
      public function get levelItem() : §]"<§
      {
         return this.§00§;
      }
      
      public function dispose() : void
      {
         if(this.mWorld && this.§&p§)
         {
            this.mWorld.§?l§(this.§&p§);
         }
         if(this.§>#§)
         {
            this.§>#§.dispose();
            this.§>#§ = null;
         }
         this.mWorld = null;
         this.§&p§ = null;
         this.§<'§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function § <§() : b2Body
      {
         return this.§&p§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§<'§.§!""§();
         if(param1 >= _loc3_.§>9§.x && param1 <= _loc3_.§2M§.x && param2 >= _loc3_.§>9§.y && param2 <= _loc3_.§2M§.y)
         {
            return this.§<'§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§ <§().GetPosition().x >= param3 && this.§ <§().GetPosition().x <= param4 && this.§ <§().GetPosition().y >= param1 && this.§ <§().GetPosition().y <= param2;
      }
      
      public function get § ^§() : Number
      {
         return this.§&p§.GetPosition().x;
      }
      
      public function get §0,§() : Number
      {
         return this.§&p§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§class§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§8!a§) : void
      {
      }
      
      public function leftSensor(param1:§8!a§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§1d§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§1d§ = null) : void
      {
      }
      
      public function §^=§(param1:§1d§) : void
      {
      }
   }
}
