package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.set;
   import §'!&§.b2Body;
   import §'!&§.b2BodyDef;
   import §'!&§.b2FixtureDef;
   import §'!&§.b2World;
   import §7!8§.Sprite;
   
   public class §3=§ extends §%!+§
   {
       
      
      protected var §1"+§:set;
      
      protected var §>0§:Vector.<§<!=§>;
      
      public function §3=§(param1:Sprite, param2:b2World, param3:§8X§, param4:set, param5:Number, param6:Number)
      {
         this.§>0§ = new Vector.<§<!=§>();
         this.§1"+§ = param4;
         super(param1,param2,param3,param5,param6,0);
         this.§6n§(param5,param6);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §6n§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §'"F§ = mWorld.CreateBody(_loc3_);
         §'"F§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§1"+§.getB2Shape(this.scale);
         _loc4_.§!!h§ = true;
         § ]§ = §'"F§.CreateFixture(_loc4_);
      }
      
      public function addSensedObject(param1:§<!=§) : void
      {
         if(param1)
         {
            if(this.§>0§.indexOf(param1) == -1)
            {
               this.§>0§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      public function removeSensedObject(param1:§<!=§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§>0§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§>0§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
