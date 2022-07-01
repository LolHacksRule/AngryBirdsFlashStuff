package §@!"§
{
   import §%8§.§@-§;
   import §%8§.§[_§;
   import §0"!§.b2Body;
   import §0"!§.b2BodyDef;
   import §0"!§.b2FixtureDef;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §3!J§.Sprite;
   
   public class §+!z§ extends §6"$§
   {
       
      
      protected var §+G§:§[_§;
      
      protected var §5r§:Vector.<§#!v§>;
      
      public function §+!z§(param1:Sprite, param2:b2World, param3:§@-§, param4:§[_§, param5:§,!A§)
      {
         this.§5r§ = new Vector.<§#!v§>();
         this.§+G§ = param4;
         super(param1,param2,param3,param5);
         this.§@!T§(§ "8§.x,§ "8§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §@!T§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §<!@§ = §^d§.CreateBody(_loc3_);
         §<!@§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§+G§.getB2Shape(this.scale);
         _loc4_.§7'§ = true;
         §," § = §<!@§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§#!v§) : void
      {
         if(param1)
         {
            if(this.§5r§.indexOf(param1) == -1)
            {
               this.§5r§.push(param1);
               param1.§9!2§(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§#!v§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§5r§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§5r§.splice(_loc2_,1);
               param1.§6n§(this);
            }
         }
      }
   }
}
