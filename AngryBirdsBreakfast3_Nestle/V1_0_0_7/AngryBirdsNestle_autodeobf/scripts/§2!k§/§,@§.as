package §2!k§
{
   import § !=§.Sprite;
   import §!!o§.b2AABB;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   import §0!j§.b2Fixture;
   import §0!j§.b2World;
   import §[^§.§`!M§;
   
   public class §,@§
   {
       
      
      protected var §1!A§:b2World;
      
      private var §%!D§:Sprite;
      
      protected var §?c§:b2Fixture;
      
      protected var §!=§:b2Body;
      
      protected var §>!A§:§`!M§;
      
      public function §,@§(param1:Sprite, param2:b2World, param3:§`!M§)
      {
         super();
         this.§%!D§ = param1;
         this.§1!A§ = param2;
         this.§>!A§ = param3;
         if(this.§>!A§)
         {
            param1.z = this.§>!A§.§4!%§();
         }
         else
         {
            param1.z = 0;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!D§;
      }
      
      public function get levelItem() : §`!M§
      {
         return this.§>!A§;
      }
      
      public function dispose() : void
      {
         if(this.§1!A§ && this.§!=§)
         {
            this.§1!A§.§'!1§(this.§!=§);
         }
         if(this.§%!D§)
         {
            this.§%!D§.dispose();
            this.§%!D§ = null;
         }
         this.§1!A§ = null;
         this.§!=§ = null;
         this.§?c§ = null;
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         return false;
      }
      
      public function § 2§() : b2Body
      {
         return this.§!=§;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:b2AABB = this.§?c§.§%!x§();
         if(param1 >= _loc3_.§;!q§.x && param1 <= _loc3_.§!!^§.x && param2 >= _loc3_.§;!q§.y && param2 <= _loc3_.§!!^§.y)
         {
            return this.§?c§.TestPoint(new b2Vec2(param1,param2));
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§ 2§().GetPosition().x >= param3 && this.§ 2§().GetPosition().x <= param4 && this.§ 2§().GetPosition().y >= param1 && this.§ 2§().GetPosition().y <= param2;
      }
      
      public function get §7!4§() : Number
      {
         return this.§!=§.GetPosition().x;
      }
      
      public function get §8! §() : Number
      {
         return this.§!=§.GetPosition().y;
      }
      
      public function update(param1:Number, param2:§?N§) : void
      {
      }
      
      public function render(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      public function §0!"§(param1:§]!A§) : void
      {
      }
      
      public function §0K§(param1:§]!A§) : void
      {
      }
      
      public function §+"+§(param1:§,@§ = null) : void
      {
      }
      
      public function §@v§(param1:§,@§ = null) : void
      {
      }
      
      public function collidedWith(param1:§,@§) : void
      {
      }
      
      public function collisionEnded(param1:§,@§) : void
      {
      }
   }
}
