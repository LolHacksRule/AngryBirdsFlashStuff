package §"!-§
{
   import §!!<§.§>"4§;
   import §,!k§.b2Vec2;
   import §0!Y§.Sprite;
   import §6f§.b2AABB;
   import §;'§.b2Body;
   import §;'§.b2Fixture;
   import §;'§.b2World;
   
   public class §@!4§
   {
       
      
      protected var §'!#§:b2World;
      
      private var §<q§:Sprite;
      
      protected var §[n§:b2Fixture;
      
      protected var §`!-§:b2Body;
      
      protected var §1!0§:§>"4§;
      
      public function §@!4§(param1:Sprite, param2:b2World, param3:§>"4§)
      {
         super();
         this.§<q§ = param1;
         this.§'!#§ = param2;
         this.§1!0§ = param3;
         if(this.§1!0§)
         {
            param1.z = this.§1!0§.§,c§();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§<q§;
      }
      
      public function get levelItem() : §>"4§
      {
         return this.§1!0§;
      }
      
      public function dispose() : void
      {
         if(this.§'!#§ && this.§`!-§)
         {
            this.§'!#§.§>!Y§(this.§`!-§);
         }
         if(this.§<q§)
         {
            this.§<q§.dispose();
            this.§<q§ = null;
         }
         this.§'!#§ = null;
         this.§`!-§ = null;
         this.§[n§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function §9l§() : b2Body
      {
         return this.§`!-§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§[n§.§'K§();
         if(param1 >= _loc3_.§-Z§.x && param1 <= _loc3_.§7^§.x && param2 >= _loc3_.§-Z§.y && param2 <= _loc3_.§7^§.y)
         {
            return this.§[n§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§9l§().GetPosition().x >= param3 && this.§9l§().GetPosition().x <= param4 && this.§9l§().GetPosition().y >= param1 && this.§9l§().GetPosition().y <= param2;
      }
      
      public function get §?_§() : Number
      {
         return this.§`!-§.GetPosition().x;
      }
      
      public function get §1![§() : Number
      {
         return this.§`!-§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§!l§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §"C§(param1:§0!X§) : void
      {
      }
      
      public function §[!n§(param1:§0!X§) : void
      {
      }
      
      public function §[s§(param1:§@!4§ = null) : void
      {
      }
      
      public function §>"#§(param1:§@!4§ = null) : void
      {
      }
      
      public function collidedWith(param1:§@!4§) : void
      {
      }
      
      public function collisionEnded(param1:§@!4§) : void
      {
      }
   }
}
