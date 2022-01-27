package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§1!'§;
   import §9!K§.b2Body;
   import §9!K§.b2BodyDef;
   import §9!K§.b2FixtureDef;
   import §9!K§.b2World;
   
   public class §]#§ extends §8a§
   {
       
      
      protected var §7"<§:§1!'§;
      
      protected var §3!8§:Vector.<§,%§>;
      
      public function §]#§(param1:Sprite, param2:b2World, param3:§-"8§, param4:§1!'§, param5:Number, param6:Number)
      {
         this.§3!8§ = new Vector.<§,%§>();
         this.§7"<§ = param4;
         super(param1,param2,param3,param5,param6,0);
         this.§[N§(param5,param6);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §[N§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §2D§ = mWorld.CreateBody(_loc3_);
         §2D§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§7"<§.getB2Shape(this.scale);
         _loc4_.§,"3§ = true;
         §7u§ = §2D§.CreateFixture(_loc4_);
      }
      
      public function addSensedObject(param1:§,%§) : void
      {
         if(param1)
         {
            if(this.§3!8§.indexOf(param1) == -1)
            {
               this.§3!8§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      public function removeSensedObject(param1:§,%§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§3!8§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§3!8§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
