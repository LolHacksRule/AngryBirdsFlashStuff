package §[,§
{
   import §#!X§.b2Body;
   import §#!X§.b2BodyDef;
   import §#!X§.b2FixtureDef;
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §;"=§.§3!R§;
   import §;"=§.§]"<§;
   
   public class §8!a§ extends §,[§
   {
       
      
      protected var §'!-§:§3!R§;
      
      protected var §0!-§:Vector.<§1d§>;
      
      public function §8!a§(param1:Sprite, param2:b2World, param3:§]"<§, param4:§3!R§, param5:Number, param6:Number)
      {
         this.§0!-§ = new Vector.<§1d§>();
         this.§'!-§ = param4;
         super(param1,param2,param3,param5,param6,0);
         this.§[>§(param5,param6);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §[>§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §&p§ = mWorld.CreateBody(_loc3_);
         §&p§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§'!-§.getB2Shape(this.scale);
         _loc4_.§3"H§ = true;
         §<'§ = §&p§.CreateFixture(_loc4_);
      }
      
      public function addSensedObject(param1:§1d§) : void
      {
         if(param1)
         {
            if(this.§0!-§.indexOf(param1) == -1)
            {
               this.§0!-§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      public function removeSensedObject(param1:§1d§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§0!-§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§0!-§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
