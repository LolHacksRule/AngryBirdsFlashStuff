package §"P§
{
   import §!"+§.§ !S§;
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §=!c§.b2Body;
   import §=!c§.b2BodyDef;
   import §=!c§.b2FixtureDef;
   import §=!c§.b2World;
   
   public class §9"3§ extends §3!2§
   {
       
      
      protected var §,"6§:§ !S§;
      
      protected var §!!o§:Vector.<§,Y§>;
      
      public function §9"3§(param1:Sprite, param2:b2World, param3:§!o§, param4:§ !S§, param5:§#,§)
      {
         this.§!!o§ = new Vector.<§,Y§>();
         this.§,"6§ = param4;
         super(param1,param2,param3,param5);
         this.§=!e§(§!!6§.x,§!!6§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §=!e§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §!"$§ = §>%§.CreateBody(_loc3_);
         §!"$§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§,"6§.getB2Shape(this.scale);
         _loc4_.§,"%§ = true;
         §"F§ = §!"$§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§,Y§) : void
      {
         if(param1)
         {
            if(this.§!!o§.indexOf(param1) == -1)
            {
               this.§!!o§.push(param1);
               param1.§+!f§(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§,Y§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§!!o§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§!!o§.splice(_loc2_,1);
               param1.§1!K§(this);
            }
         }
      }
   }
}
