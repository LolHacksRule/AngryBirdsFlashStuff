package §"!-§
{
   import §!!<§.§>"4§;
   import §!!<§.§`!J§;
   import §0!Y§.Sprite;
   import §;'§.b2Body;
   import §;'§.b2BodyDef;
   import §;'§.b2FixtureDef;
   import §;'§.b2World;
   
   public class §0!X§ extends §3"0§
   {
       
      
      protected var § 2§:§`!J§;
      
      protected var §,d§:Vector.<§@!4§>;
      
      public function §0!X§(param1:Sprite, param2:b2World, param3:§>"4§, param4:§`!J§, param5:Number, param6:Number)
      {
         this.§,d§ = new Vector.<§@!4§>();
         this.§ 2§ = param4;
         super(param1,param2,param3,param5,param6,0);
         this.§?!%§(param5,param6);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §?!%§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §`!-§ = §'!#§.CreateBody(_loc3_);
         §`!-§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§ 2§.getB2Shape(this.scale);
         _loc4_.§4!e§ = true;
         §[n§ = §`!-§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§@!4§) : void
      {
         if(param1)
         {
            if(this.§,d§.indexOf(param1) == -1)
            {
               this.§,d§.push(param1);
               param1.§"C§(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§@!4§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§,d§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§,d§.splice(_loc2_,1);
               param1.§[!n§(this);
            }
         }
      }
   }
}
