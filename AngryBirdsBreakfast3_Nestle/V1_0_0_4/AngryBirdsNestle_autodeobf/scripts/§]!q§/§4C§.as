package §]!q§
{
   import §-!f§.Sprite;
   import §5!7§.§3!Y§;
   import §5!7§.§[2§;
   import §9"5§.b2Body;
   import §9"5§.b2BodyDef;
   import §9"5§.b2FixtureDef;
   import §9"5§.b2World;
   
   public class §4C§ extends § !D§
   {
       
      
      protected var §6X§:§[2§;
      
      protected var §3!'§:Vector.<§;!4§>;
      
      public function §4C§(param1:Sprite, param2:b2World, param3:§3!Y§, param4:§[2§, param5:Number, param6:Number)
      {
         this.§3!'§ = new Vector.<§;!4§>();
         this.§6X§ = param4;
         super(param1,param2,param3,param5,param6,0);
         this.§use§(param5,param6);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §use§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §+!R§ = §,'§.CreateBody(_loc3_);
         §+!R§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§6X§.getB2Shape(this.scale);
         _loc4_.§,x§ = true;
         §1V§ = §+!R§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§;!4§) : void
      {
         if(param1)
         {
            if(this.§3!'§.indexOf(param1) == -1)
            {
               this.§3!'§.push(param1);
               param1.§#!6§(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§;!4§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§3!'§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§3!'§.splice(_loc2_,1);
               param1.§>!,§(this);
            }
         }
      }
   }
}
