package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2Body;
   import §8#t§.b2BodyDef;
   import §8#t§.b2FixtureDef;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§+#c§;
   import §?§.§,Y§;
   
   public class §0!N§ extends §""L§
   {
       
      
      protected var §?"g§:§+#c§;
      
      protected var §9"j§:Vector.<§1#B§>;
      
      public function §0!N§(param1:Sprite, param2:b2World, param3:§,Y§, param4:§+#c§, param5:§9"4§)
      {
         this.§9"j§ = new Vector.<§1#B§>();
         this.§?"g§ = param4;
         super(param1,param2,param3,param5);
         this.§##=§(§4!_§.x,§4!_§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §##=§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = null;
         _loc3_ = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §=#w§ = mWorld.CreateBody(_loc3_);
         §=#w§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§?"g§.getB2Shape(this.scale);
         _loc4_.§ !8§ = true;
         §2"T§ = §=#w§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§1#B§) : void
      {
         if(param1)
         {
            if(this.§9"j§.indexOf(param1) == -1)
            {
               this.§9"j§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§1#B§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§9"j§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§9"j§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
