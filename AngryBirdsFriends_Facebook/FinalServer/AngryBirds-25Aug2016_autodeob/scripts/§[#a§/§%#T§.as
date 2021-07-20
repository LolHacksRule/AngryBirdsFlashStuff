package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2Body;
   import §=#n§.b2BodyDef;
   import §=#n§.b2FixtureDef;
   import §=#n§.b2World;
   import §`#C§.§-"L§;
   import §`#C§.§8K§;
   
   public class §%#T§ extends §'?§
   {
       
      
      protected var §9#3§:§-"L§;
      
      protected var §>#C§:Vector.<§<"H§>;
      
      public function §%#T§(param1:Sprite, param2:b2World, param3:§8K§, param4:§-"L§, param5:§!#%§)
      {
         this.§>#C§ = new Vector.<§<"H§>();
         this.§9#3§ = param4;
         super(param1,param2,param3,param5);
         this.§1#9§(§!P§.x,§!P§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §1#9§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = null;
         _loc3_ = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         § !7§ = mWorld.CreateBody(_loc3_);
         § !7§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§9#3§.getB2Shape(this.scale);
         _loc4_.§7n§ = true;
         §-#c§ = § !7§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§<"H§) : void
      {
         if(param1)
         {
            if(this.§>#C§.indexOf(param1) == -1)
            {
               this.§>#C§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§<"H§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§>#C§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§>#C§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
