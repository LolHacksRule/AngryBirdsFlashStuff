package §,z§
{
   import §&v§.§9B§;
   import §&v§.§each §;
   import §3!`§.b2Body;
   import §3!`§.b2BodyDef;
   import §3!`§.b2FixtureDef;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §%!f§ extends §?!;§
   {
       
      
      protected var §%8§:§each §;
      
      protected var §5!S§:Vector.<§<!r§>;
      
      public function §%!f§(param1:Sprite, param2:b2World, param3:§9B§, param4:§each §, param5:§8K§)
      {
         this.§5!S§ = new Vector.<§<!r§>();
         this.§%8§ = param4;
         super(param1,param2,param3,param5);
         this.§;!+§(§-!k§.x,§-!k§.y);
      }
      
      protected function get scale() : Number
      {
         return 1;
      }
      
      protected function §;!+§(param1:Number, param2:Number) : void
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_staticBody;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         §<H§ = §-#§.CreateBody(_loc3_);
         §<H§.SetUserData(this);
         var _loc4_:b2FixtureDef;
         (_loc4_ = new b2FixtureDef()).shape = this.§%8§.getB2Shape(this.scale);
         _loc4_.§4F§ = true;
         §]!_§ = §<H§.CreateFixture(_loc4_);
      }
      
      override public function collidedWith(param1:§<!r§) : void
      {
         if(param1)
         {
            if(this.§5!S§.indexOf(param1) == -1)
            {
               this.§5!S§.push(param1);
               param1.§#!]§(this);
            }
         }
      }
      
      override public function collisionEnded(param1:§<!r§) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = this.§5!S§.indexOf(param1);
            if(_loc2_ != -1)
            {
               this.§5!S§.splice(_loc2_,1);
               param1.§'![§(this);
            }
         }
      }
   }
}
