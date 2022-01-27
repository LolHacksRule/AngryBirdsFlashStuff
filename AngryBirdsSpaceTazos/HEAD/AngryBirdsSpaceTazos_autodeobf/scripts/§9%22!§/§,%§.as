package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §6!n§.b2Vec2;
   import §9!K§.b2Body;
   import §9!K§.b2Fixture;
   import §9!K§.b2World;
   import §;!Z§.b2AABB;
   
   public class §,%§
   {
       
      
      protected var mWorld:b2World;
      
      private var §5"'§:Sprite;
      
      protected var §7u§:b2Fixture;
      
      protected var §2D§:b2Body;
      
      protected var § N§:§-"8§;
      
      public function §,%§(param1:Sprite, param2:b2World, param3:§-"8§)
      {
         super();
         this.§5"'§ = param1;
         this.mWorld = param2;
         this.§ N§ = param3;
         if(this.§ N§)
         {
            param1.z = this.§ N§.getItemZOrder();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§5"'§;
      }
      
      public function get levelItem() : §-"8§
      {
         return this.§ N§;
      }
      
      public function dispose() : void
      {
         if(this.mWorld && this.§2D§)
         {
            this.mWorld.§3!_§(this.§2D§);
         }
         if(this.§5"'§)
         {
            this.§5"'§.dispose();
            this.§5"'§ = null;
         }
         this.mWorld = null;
         this.§2D§ = null;
         this.§7u§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §`I§() : b2Body
      {
         return this.§2D§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§7u§.§0!u§();
         if(param1 >= _loc3_.§'!l§.x && param1 <= _loc3_.§?i§.x && param2 >= _loc3_.§'!l§.y && param2 <= _loc3_.§?i§.y)
         {
            return this.§7u§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`I§().GetPosition().x >= param3 && this.§`I§().GetPosition().x <= param4 && this.§`I§().GetPosition().y >= param1 && this.§`I§().GetPosition().y <= param2;
      }
      
      public function get §5!p§() : Number
      {
         return this.§2D§.GetPosition().x;
      }
      
      public function get §52§() : Number
      {
         return this.§2D§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§0!s§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function enteredSensor(param1:§]#§) : void
      {
      }
      
      public function leftSensor(param1:§]#§) : void
      {
      }
      
      public function attachedJointRemoved(param1:§,%§ = null) : void
      {
      }
      
      public function attachedJointCreated(param1:§,%§ = null) : void
      {
      }
      
      public function §`d§(param1:§,%§) : void
      {
      }
   }
}
