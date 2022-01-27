package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2Body;
   import §1x§.b2BodyDef;
   import §1x§.b2FixtureDef;
   import §1x§.b2World;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   import §>P§.§?"Q§;
   
   public class §-t§ extends §'!Q§
   {
       
      
      protected var §^!p§:§?"Q§;
      
      protected var §0!0§:Vector.<§!z§>;
      
      public function §-t§(param1:Sprite, param2:b2World, param3:§=!,§, param4:§?"Q§, param5:§^d§)
      {
         this.§0!0§ = new Vector.<§!z§>();
         this.§^!p§ = param4;
         super(param1,param2,param3,param5);
         this.§[!I§(§;W§.x,§;W§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §[!I§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §#"R§ = mWorld.CreateBody(_loc3_);
         §#"R§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§^!p§.getB2Shape(this.scale);
         _loc4_.§]y§ = true;
         §<!$§ = §#"R§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§!z§) : void
      {
         if(param1)
         {
            if(this.§0!0§.indexOf(param1) == -1)
            {
               this.§0!0§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§!z§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§0!0§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§0!0§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
