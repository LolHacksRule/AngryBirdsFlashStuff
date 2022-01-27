package §!r§
{
   import §#g§.§'<§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2Body;
   import §>"_§.b2BodyDef;
   import §>"_§.b2FixtureDef;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §03§ extends §]e§
   {
       
      
      protected var §%#-§:§'<§;
      
      protected var § #1§:Vector.<§?!x§>;
      
      public function §03§(param1:Sprite, param2:b2World, param3:§["%§, param4:§'<§, param5:§9v§)
      {
         this.§ #1§ = new Vector.<§?!x§>();
         this.§%#-§ = param4;
         super(param1,param2,param3,param5);
         this.§5"L§(§"C§.x,§"C§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §5"L§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §-#6§ = mWorld.CreateBody(_loc3_);
         §-#6§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§%#-§.getB2Shape(this.scale);
         _loc4_.§ !$§ = true;
         §&"B§ = §-#6§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§?!x§) : void
      {
         if(param1)
         {
            if(this.§ #1§.indexOf(param1) == -1)
            {
               this.§ #1§.push(param1);
               param1.enteredSensor(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§?!x§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§ #1§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§ #1§.splice(_loc2_,1);
               param1.leftSensor(this);
            }
         }
      }
   }
}
