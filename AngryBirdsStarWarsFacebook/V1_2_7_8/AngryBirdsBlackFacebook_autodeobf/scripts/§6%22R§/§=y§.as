package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2Fixture;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§=4§;
   
   public class §=y§ extends §6"1§
   {
      
      protected static const §@!V§:Number = 3.2;
      
      public static const §^!3§:String = "BLOCK_SENSOR_LAZER";
       
      
      protected var §<!o§:int = 0;
      
      protected var §?!4§:Vector.<Number>;
      
      protected var §#U§:int;
      
      protected var §"k§:Number;
      
      protected var §^&§:Number;
      
      protected var §0!r§:Number = 0.0;
      
      protected var §#a§:String = "";
      
      protected var §4!7§:Number = 1.0;
      
      protected var §?C§:Boolean = false;
      
      public function §=y§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=4§, param5:§^d§, param6:Number, param7:int)
      {
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         this.§?!4§ = new Vector.<Number>();
         super(param1,param2,param3,param4,param5,param6);
         this.§<!o§ = param7;
         this.§^&§ = 0;
         var _loc8_:Number;
         if((_loc8_ = param4.getNumberProperty("shotData",this.§<!o§ - 1,"length")) > 0)
         {
            this.§"k§ = param4.getNumberProperty("shotData",this.§<!o§ - 1,0,"timeInterval") * 1000;
            this.§0!r§ = param4.getNumberProperty("shotData",this.§<!o§ - 1,0,"speed",0);
            this.§#a§ = param4.getProperty("shotData",this.§<!o§ - 1,0,"block");
            this.§4!7§ = Number(param4.getNumberProperty("scale")) || Number(1);
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc10_ = param4.getNumberProperty("shotData",this.§<!o§ - 1,_loc9_,"currentTime") * 1000;
               this.§?!4§.push(_loc10_);
               _loc9_++;
            }
         }
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §#"R§.CreateFixture2(§-!f§.shape.getB2Shape(),§-!f§.getItemDensity());
         _loc1_.§1!M§(§-!f§.getItemFriction());
         _loc1_.§!"W§(§-!f§.getItemRestitution());
         _loc1_.§>"X§(true);
         return _loc1_;
      }
      
      override public function attachedJointRemoved(param1:§!z§ = null) : void
      {
         this.§?C§ = true;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0 || this.§?C§;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         var _loc3_:§ !Q§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super.update(param1,param2);
         if(this.§"k§ <= 0 || this.§?!4§.length == 0)
         {
            return;
         }
         this.§^&§ += param1;
         while(this.§^&§ > this.§?!4§[this.§#U§])
         {
            _loc3_ = param2 as § !Q§;
            if(_loc3_)
            {
               _loc4_ = §4F§() - Math.PI / 2;
               _loc5_ = §?"Z§().GetPosition().x + Math.cos(_loc4_) * §@!V§ * 0.7;
               _loc6_ = §?"Z§().GetPosition().y + Math.sin(_loc4_) * §@!V§ * 0.7;
               _loc3_.§^"L§(this.§#a§,_loc5_,_loc6_,_loc4_ / (Math.PI / 180),this.§0!r§,false);
            }
            ++this.§#U§;
            if(this.§#U§ >= this.§?!4§.length)
            {
               this.§^&§ -= this.§"k§;
               this.§#U§ = 0;
            }
         }
      }
   }
}
