package §8§#8
{
   import §4"O§.b2Body;
   import §4"O§.b2BodyDef;
   import §4"O§.b2FixtureDef;
   import §4"O§.b2World;
   import §8"L§.§!!C§;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   
   public class §7!0§ extends §`";§
   {
       
      
      protected var §-#-§:§!!C§;
      
      protected var §0!=§:Vector.<§,#5§>;
      
      public function §7!0§(param1:Sprite, param2:b2World, param3:§4U§, param4:§!!C§, param5:§["z§)
      {
         this.§0!=§ = new Vector.<§,#5§>();
         this.§-#-§ = param4;
         super(param1,param2,param3,param5);
         this.§0"6§(§%!@§.x,§%!@§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §0"6§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = null;
         _loc3_ = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §=#D§ = mWorld.CreateBody(_loc3_);
         §=#D§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§-#-§.getB2Shape(this.scale);
         _loc4_.§1^§ = true;
         §'"K§ = §=#D§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§,#5§) : void
      {
         if(param1)
         {
            if(this.§0!=§.indexOf(param1) == -1)
            {
               this.§0!=§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§,#5§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§0!=§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§0!=§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
