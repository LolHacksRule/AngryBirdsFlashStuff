package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§%!a§;
   import §-!j§.§-"8§;
   import §3#h§.b2Body;
   import §3#h§.b2BodyDef;
   import §3#h§.b2FixtureDef;
   import §3#h§.b2World;
   import §@"v§.§@$<§;
   
   public class §5;§ extends §3Q§
   {
       
      
      protected var §!!Y§:§%!a§;
      
      protected var §;$&§:Vector.<§4!t§>;
      
      public function §5;§(param1:Sprite, param2:b2World, param3:§-"8§, param4:§%!a§, param5:§@$<§)
      {
         this.§;$&§ = new Vector.<§4!t§>();
         this.§!!Y§ = param4;
         super(param1,param2,param3,param5);
         this.§5"B§(§7b§.x,§7b§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §5"B§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = null;
         _loc3_ = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §%#b§ = mWorld.CreateBody(_loc3_);
         §%#b§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§!!Y§.getB2Shape(this.scale);
         _loc4_.§-!c§ = true;
         §?#B§ = §%#b§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§4!t§) : void
      {
         if(param1)
         {
            if(this.§;$&§.indexOf(param1) == -1)
            {
               this.§;$&§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§4!t§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§;$&§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§;$&§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
