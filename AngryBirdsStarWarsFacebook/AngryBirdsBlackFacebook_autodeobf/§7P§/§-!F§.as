package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §-!F§ extends §9"k§
   {
      
      public static const §+"§:String = "RedBird";
       
      
      private var §""B§:§@!W§;
      
      private var §2!m§:String;
      
      private var §,"+§:Boolean = false;
      
      public function §-!F§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§2!m§ = param4.getProperty("specialtyObject");
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = §3!t§().GetPosition().x;
         var _loc5_:Number = §3!t§().GetPosition().y;
         var _loc6_:Number = §3!t§().GetAngle();
         this.§""B§ = §@!W§(param1.addObject(this.§2!m§,_loc4_,_loc5_,_loc6_ - 2.5,§;=§.§""3§));
         this.§""B§.init(this);
         var _loc7_:§ [§;
         if(_loc7_ = param1 as § [§)
         {
            _loc7_.§&Q§(200,500,1000,0.2);
         }
      }
      
      public function §]l§() : void
      {
         this.§""B§ = null;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.§2!m§ != null && super.canActivateSpecialPower;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         if(this.§""B§)
         {
            this.§""B§.§?2§(param2);
         }
         if(this.§,"+§ && §2N§.getCurrentAnimationName() != §4!v§)
         {
            §2N§.setAnimation(§4!v§);
         }
         super.update(param1,param2);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§,"+§ = true;
         super.handleInitialCollision();
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         super.updateBeforeRemoving(param1);
         if(this.§""B§)
         {
            if(param1)
            {
               param1.removeObject(this.§""B§,false);
            }
            this.§""B§ = null;
         }
      }
   }
}
