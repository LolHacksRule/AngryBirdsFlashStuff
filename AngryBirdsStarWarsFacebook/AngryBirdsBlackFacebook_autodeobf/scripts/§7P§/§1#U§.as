package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §2"Y§.§["$§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §1#U§ extends §`#G§
   {
      
      protected static const §+C§:Number = 3.2;
      
      public static const §+"§:String = "BLOCK_SENSOR_LAZER";
       
      
      protected var §"!7§:int = 0;
      
      protected var §[#G§:Vector.<Number>;
      
      protected var §1"u§:int;
      
      protected var §>!?§:Number;
      
      protected var §5! §:Number;
      
      protected var §-#R§:Number = 0.0;
      
      protected var §%#3§:String = "";
      
      protected var §@"j§:Number = 1.0;
      
      protected var §]"k§:Boolean = false;
      
      public function §1#U§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§["$§, param5:§94§, param6:Number, param7:int)
      {
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         this.§[#G§ = new Vector.<Number>();
         super(param1,param2,param3,param4,param5,param6);
         this.§"!7§ = param7;
         this.§5! § = 0;
         var _loc8_:Number;
         if((_loc8_ = param4.getNumberProperty("shotData",this.§"!7§ - 1,"length")) > 0)
         {
            this.§>!?§ = param4.getNumberProperty("shotData",this.§"!7§ - 1,0,"timeInterval") * 1000;
            this.§-#R§ = param4.getNumberProperty("shotData",this.§"!7§ - 1,0,"speed",0);
            this.§%#3§ = param4.getProperty("shotData",this.§"!7§ - 1,0,"block");
            this.§@"j§ = Number(param4.getNumberProperty("scale")) || Number(1);
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc10_ = param4.getNumberProperty("shotData",this.§"!7§ - 1,_loc9_,"currentTime") * 1000;
               this.§[#G§.push(_loc10_);
               _loc9_++;
            }
         }
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §04§.CreateFixture2(§;B§.shape.getB2Shape(),§;B§.getItemDensity());
         _loc1_.§"Y§(§;B§.getItemFriction());
         _loc1_.§5q§(§;B§.getItemRestitution());
         _loc1_.§"!I§(true);
         return _loc1_;
      }
      
      override public function attachedJointRemoved(param1:§7B§ = null) : void
      {
         this.§]"k§ = true;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0 || this.§]"k§;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:§,#Z§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super.update(param1,param2);
         if(this.§>!?§ <= 0 || this.§[#G§.length == 0)
         {
            return;
         }
         this.§5! § += param1;
         while(this.§5! § > this.§[#G§[this.§1"u§])
         {
            _loc3_ = param2 as §,#Z§;
            if(_loc3_)
            {
               _loc4_ = §"#,§() - Math.PI / 2;
               _loc5_ = §3!t§().GetPosition().x + Math.cos(_loc4_) * §+C§ * 0.7;
               _loc6_ = §3!t§().GetPosition().y + Math.sin(_loc4_) * §+C§ * 0.7;
               _loc3_.§#!#§(this.§%#3§,_loc5_,_loc6_,_loc4_ / (Math.PI / 180),this.§-#R§,false);
            }
            ++this.§1"u§;
            if(this.§1"u§ >= this.§[#G§.length)
            {
               this.§5! § -= this.§>!?§;
               this.§1"u§ = 0;
            }
         }
      }
   }
}
