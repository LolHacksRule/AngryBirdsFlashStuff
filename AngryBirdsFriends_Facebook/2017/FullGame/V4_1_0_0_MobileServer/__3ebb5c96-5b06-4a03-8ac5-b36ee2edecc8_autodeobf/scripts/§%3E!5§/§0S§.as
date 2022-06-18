package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2Body;
   import §1!+§.b2BodyDef;
   import §1!+§.b2FixtureDef;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7"&§.§!"v§;
   import §7"&§.§]"k§;
   
   public class §0S§ extends §1!C§
   {
       
      
      protected var §!#g§:§]"k§;
      
      protected var §9D§:Vector.<§#-§>;
      
      public function §0S§(param1:Sprite, param2:b2World, param3:§!"v§, param4:§]"k§, param5:§]"o§)
      {
         this.§9D§ = new Vector.<§#-§>();
         this.§!#g§ = param4;
         super(param1,param2,param3,param5);
         this.§ >§(§=@§.x,§=@§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function § >§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = null;
         _loc3_ = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §-[§ = mWorld.CreateBody(_loc3_);
         §-[§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§!#g§.getB2Shape(this.scale);
         _loc4_.§?r§ = true;
         §1"T§ = §-[§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§#-§) : void
      {
         if(param1)
         {
            if(this.§9D§.indexOf(param1) == -1)
            {
               this.§9D§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§#-§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§9D§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§9D§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
