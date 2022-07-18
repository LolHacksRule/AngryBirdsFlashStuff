package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FixtureDef;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§?#^§;
   import §<"B§.§94§;
   
   public class §1#E§ extends §#m§
   {
       
      
      protected var §5#T§:§?#^§;
      
      protected var §,"k§:Vector.<§7B§>;
      
      public function §1#E§(param1:Sprite, param2:b2World, param3:§"t§, param4:§?#^§, param5:§94§)
      {
         this.§,"k§ = new Vector.<§7B§>();
         this.§5#T§ = param4;
         super(param1,param2,param3,param5);
         this.§-"m§(§1!!§.x,§1!!§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §-"m§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §04§ = mWorld.CreateBody(_loc3_);
         §04§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§5#T§.getB2Shape(this.scale);
         _loc4_.§-"`§ = true;
         §^!L§ = §04§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         if(param1)
         {
            if(this.§,"k§.indexOf(param1) == -1)
            {
               this.§,"k§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§7B§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§,"k§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§,"k§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
