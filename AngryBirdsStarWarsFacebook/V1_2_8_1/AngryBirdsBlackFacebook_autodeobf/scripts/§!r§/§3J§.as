package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§11§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §3J§ extends §2!a§
   {
      
      public static const §5!L§:String = "RedBird";
       
      
      private var §'"Q§:§#2§;
      
      private var §%"`§:String;
      
      private var §+"O§:Boolean = false;
      
      public function §3J§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§11§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§%"`§ = param4.getProperty("specialtyObject");
      }
      
      override protected function specialPower(param1:§'=§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = §3"s§().GetPosition().x;
         var _loc5_:Number = §3"s§().GetPosition().y;
         var _loc6_:Number = §3"s§().GetAngle();
         this.§'"Q§ = §#2§(param1.addObject(this.§%"`§,_loc4_,_loc5_,_loc6_ - 2.5,§9"f§.§["_§));
         this.§'"Q§.init(this);
         var _loc7_:§;"9§;
         if(_loc7_ = param1 as §;"9§)
         {
            _loc7_.§["a§(200,500,1000,0.2);
         }
      }
      
      public function §,"U§() : void
      {
         this.§'"Q§ = null;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.§%"`§ != null && super.canActivateSpecialPower;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         if(this.§'"Q§)
         {
            this.§'"Q§.§`"&§(param2);
         }
         if(this.§+"O§ && §]!g§.getCurrentAnimationName() != §>W§)
         {
            §]!g§.setAnimation(§>W§);
         }
         super.update(param1,param2);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§+"O§ = true;
         super.handleInitialCollision();
      }
      
      override public function updateBeforeRemoving(param1:§'=§) : void
      {
         super.updateBeforeRemoving(param1);
         if(this.§'"Q§)
         {
            if(param1)
            {
               param1.removeObject(this.§'"Q§,false);
            }
            this.§'"Q§ = null;
         }
      }
   }
}
