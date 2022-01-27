package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§7r§;
   import §6!M§.§<!r§;
   import §;`§.b2Body;
   import §;`§.b2BodyDef;
   import §;`§.b2FixtureDef;
   import §;`§.b2World;
   
   public class §<!&§ extends §`!F§
   {
       
      
      protected var §^!p§:§7r§;
      
      protected var §>k§:Vector.<§>q§>;
      
      public function §<!&§(param1:Sprite, param2:b2World, param3:§<!r§, param4:§7r§, param5:Number, param6:Number)
      {
         this.§>k§ = new Vector.<§>q§>();
         this.§^!p§ = param4;
         super(param1,param2,param3,param5,param6,0);
         this.§@f§(param5,param6);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §@f§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         § y§ = mWorld.CreateBody(_loc3_);
         § y§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§^!p§.getB2Shape(this.scale);
         _loc4_.§&t§ = true;
         §!O§ = § y§.CreateFixture(_loc4_);
      }
      
      public function addSensedObject(param1:§>q§) : void
      {
         if(param1)
         {
            if(this.§>k§.indexOf(param1) == -1)
            {
               this.§>k§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      public function removeSensedObject(param1:§>q§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§>k§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§>k§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
