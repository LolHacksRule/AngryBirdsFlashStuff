package §=!`§
{
   import §%z§.§-i§;
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2Body;
   import §,v§.b2BodyDef;
   import §,v§.b2FixtureDef;
   import §,v§.b2World;
   
   public class §0!K§ extends §`?§
   {
       
      
      protected var §02§:§-i§;
      
      protected var §-P§:Vector.<§=6§>;
      
      public function §0!K§(param1:Sprite, param2:b2World, param3:§9!n§, param4:§-i§, param5:Number, param6:Number)
      {
         this.§-P§ = new Vector.<§=6§>();
         this.§02§ = param4;
         super(param1,param2,param3,param5,param6,0);
         this.§4!>§(param5,param6);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §4!>§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §6!`§ = §'!7§.CreateBody(_loc3_);
         §6!`§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§02§.getB2Shape(this.scale);
         _loc4_.§4"+§ = true;
         §4"#§ = §6!`§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§=6§) : void
      {
         if(param1)
         {
            if(this.§-P§.indexOf(param1) == -1)
            {
               this.§-P§.push(param1);
               param1.§5! §(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§=6§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§-P§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§-P§.splice(_loc2_,1);
               param1.§]!y§(this);
            }
         }
      }
   }
}
