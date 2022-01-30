package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2Body;
   import §0!j§.b2BodyDef;
   import §0!j§.b2FixtureDef;
   import §0!j§.b2World;
   import §[^§.§#!?§;
   import §[^§.§`!M§;
   
   public class §]!A§ extends §47§
   {
       
      
      protected var §--§:§#!?§;
      
      protected var § 0§:Vector.<§,@§>;
      
      public function §]!A§(param1:Sprite, param2:b2World, param3:§`!M§, param4:§#!?§, param5:Number, param6:Number)
      {
         this.§ 0§ = new Vector.<§,@§>();
         this.§--§ = param4;
         super(param1,param2,param3,param5,param6,0);
         this.§5!§(param5,param6);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §5!§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §!=§ = §1!A§.CreateBody(_loc3_);
         §!=§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§--§.getB2Shape(this.scale);
         _loc4_.§'!F§ = true;
         §?c§ = §!=§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§,@§) : void
      {
         if(param1)
         {
            if(this.§ 0§.indexOf(param1) == -1)
            {
               this.§ 0§.push(param1);
               param1.§0!"§(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§,@§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§ 0§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§ 0§.splice(_loc2_,1);
               param1.§0K§(this);
            }
         }
      }
   }
}
