package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2Body;
   import §'#K§.b2BodyDef;
   import §'#K§.b2FixtureDef;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §8#K§.§&2§;
   import §8#K§.§46§;
   
   public class §`"4§ extends §1!V§
   {
       
      
      protected var § if§:§46§;
      
      protected var §4!§:Vector.<§'#N§>;
      
      public function §`"4§(param1:Sprite, param2:b2World, param3:§&2§, param4:§46§, param5:§5"?§)
      {
         this.§4!§ = new Vector.<§'#N§>();
         this.§ if§ = param4;
         super(param1,param2,param3,param5);
         this.§+![§(§9y§.x,§9y§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §+![§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = null;
         _loc3_ = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §2"j§ = mWorld.CreateBody(_loc3_);
         §2"j§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§ if§.getB2Shape(this.scale);
         _loc4_.§#"U§ = true;
         §0>§ = §2"j§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§'#N§) : void
      {
         if(param1)
         {
            if(this.§4!§.indexOf(param1) == -1)
            {
               this.§4!§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§'#N§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§4!§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§4!§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
