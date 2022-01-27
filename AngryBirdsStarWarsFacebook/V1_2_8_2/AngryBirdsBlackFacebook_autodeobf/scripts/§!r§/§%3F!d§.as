package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§[!F§;
   import §=G§.§9v§;
   import §>"_§.b2Fixture;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §?!d§ extends §%E§
   {
      
      protected static const §^!#§:Number = 3.2;
      
      public static const §5!L§:String = "BLOCK_SENSOR_LAZER";
       
      
      protected var §+l§:int = 0;
      
      protected var §="[§:Vector.<Number>;
      
      protected var §;M§:int;
      
      protected var §;#'§:Number;
      
      protected var §1"`§:Number;
      
      protected var § "E§:Number = 0.0;
      
      protected var §&X§:String = "";
      
      protected var §#"f§:Number = 1.0;
      
      protected var §`!1§:Boolean = false;
      
      public function §?!d§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§[!F§, param5:§9v§, param6:Number, param7:int)
      {
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         this.§="[§ = new Vector.<Number>();
         super(param1,param2,param3,param4,param5,param6);
         this.§+l§ = param7;
         this.§1"`§ = 0;
         var _loc8_:Number;
         if((_loc8_ = param4.getNumberProperty("shotData",this.§+l§ - 1,"length")) > 0)
         {
            this.§;#'§ = param4.getNumberProperty("shotData",this.§+l§ - 1,0,"timeInterval") * 1000;
            this.§ "E§ = param4.getNumberProperty("shotData",this.§+l§ - 1,0,"speed",0);
            this.§&X§ = param4.getProperty("shotData",this.§+l§ - 1,0,"block");
            this.§#"f§ = Number(param4.getNumberProperty("scale")) || Number(1);
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc10_ = param4.getNumberProperty("shotData",this.§+l§ - 1,_loc9_,"currentTime") * 1000;
               this.§="[§.push(_loc10_);
               _loc9_++;
            }
         }
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = §-#6§.CreateFixture2(§+!j§.shape.getB2Shape(),§+!j§.getItemDensity());
         _loc1_.§#!O§(§+!j§.getItemFriction());
         _loc1_.§4"K§(§+!j§.getItemRestitution());
         _loc1_.§9"[§(true);
         return _loc1_;
      }
      
      override public function attachedJointRemoved(param1:§?!x§ = null) : void
      {
         this.§`!1§ = true;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0 || this.§`!1§;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         var _loc3_:§<!F§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super.update(param1,param2);
         if(this.§;#'§ <= 0 || this.§="[§.length == 0)
         {
            return;
         }
         this.§1"`§ += param1;
         while(this.§1"`§ > this.§="[§[this.§;M§])
         {
            _loc3_ = param2 as §<!F§;
            if(_loc3_)
            {
               _loc4_ = §<"g§() - Math.PI / 2;
               _loc5_ = §3"s§().GetPosition().x + Math.cos(_loc4_) * §^!#§ * 0.7;
               _loc6_ = §3"s§().GetPosition().y + Math.sin(_loc4_) * §^!#§ * 0.7;
               _loc3_.§=-§(this.§&X§,_loc5_,_loc6_,_loc4_ / (Math.PI / 180),this.§ "E§,false);
            }
            ++this.§;M§;
            if(this.§;M§ >= this.§="[§.length)
            {
               this.§1"`§ -= this.§;#'§;
               this.§;M§ = 0;
            }
         }
      }
   }
}
