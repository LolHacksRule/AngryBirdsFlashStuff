package §6!3§
{
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§4"F§;
   import §?$<§.§?$>§;
   import §@!S§.b2Body;
   import §@!S§.b2BodyDef;
   import §@!S§.b2FixtureDef;
   import §@!S§.b2World;
   
   public class §@#v§ extends §+0§
   {
       
      
      protected var §'#5§:§4"F§;
      
      protected var §3z§:Vector.<§!y§>;
      
      public function §@#v§(param1:Sprite, param2:b2World, param3:§?$>§, param4:§4"F§, param5:§,!B§)
      {
         this.§3z§ = new Vector.<§!y§>();
         this.§'#5§ = param4;
         super(param1,param2,param3,param5);
         this.§@"g§(§@#h§.x,§@#h§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §@"g§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = null;
         _loc3_ = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         § "8§ = mWorld.CreateBody(_loc3_);
         § "8§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§'#5§.getB2Shape(this.scale);
         _loc4_.§!"f§ = true;
         §;"^§ = § "8§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§!y§) : void
      {
         if(param1)
         {
            if(this.§3z§.indexOf(param1) == -1)
            {
               this.§3z§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§!y§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§3z§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§3z§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
