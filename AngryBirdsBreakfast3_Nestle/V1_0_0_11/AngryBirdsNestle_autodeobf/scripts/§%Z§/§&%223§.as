package §%Z§
{
   import §2!s§.§!e§;
   import §2!s§.§4"1§;
   import §8+§.§5"-§;
   import §9!Z§.b2Body;
   import §9!Z§.b2BodyDef;
   import §9!Z§.b2FixtureDef;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §&"3§ extends §]B§
   {
       
      
      protected var §;!f§:§4"1§;
      
      protected var §<!]§:Vector.<§+!F§>;
      
      public function §&"3§(param1:Sprite, param2:b2World, param3:§!e§, param4:§4"1§, param5:§5"-§)
      {
         this.§<!]§ = new Vector.<§+!F§>();
         this.§;!f§ = param4;
         super(param1,param2,param3,param5);
         this.§7!X§(§7!+§.x,§7!+§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §7!X§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §4R§ = §?F§.CreateBody(_loc3_);
         §4R§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§;!f§.getB2Shape(this.scale);
         _loc4_.§"!U§ = true;
         §0q§ = §4R§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§+!F§) : void
      {
         if(param1)
         {
            if(this.§<!]§.indexOf(param1) == -1)
            {
               this.§<!]§.push(param1);
               param1.§ F§(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§+!F§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§<!]§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§<!]§.splice(_loc2_,1);
               param1.§5=§(this);
            }
         }
      }
   }
}
