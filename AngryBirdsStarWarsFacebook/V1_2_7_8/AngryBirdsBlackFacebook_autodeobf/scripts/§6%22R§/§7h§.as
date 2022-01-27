package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§&"§;
   
   public class §7h§ extends § !v§
   {
      
      public static const §^!3§:String = "RedBird";
       
      
      private var §2"r§:§3!R§;
      
      private var §5#-§:String;
      
      private var §>#+§:Boolean = false;
      
      public function §7h§(param1:Sprite, param2:§[a§, param3:b2World, param4:§&"§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§5#-§ = param4.getProperty("specialtyObject");
      }
      
      override protected function specialPower(param1:§""M§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         var _loc4_:Number = §?"Z§().GetPosition().x;
         var _loc5_:Number = §?"Z§().GetPosition().y;
         var _loc6_:Number = §?"Z§().GetAngle();
         this.§2"r§ = §3!R§(param1.addObject(this.§5#-§,_loc4_,_loc5_,_loc6_ - 2.5,§super§.§4"D§));
         this.§2"r§.init(this);
         var _loc7_:§4"d§;
         if(_loc7_ = param1 as §4"d§)
         {
            _loc7_.§8#3§(200,500,1000,0.2);
         }
      }
      
      public function § "l§() : void
      {
         this.§2"r§ = null;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return this.§5#-§ != null && super.canActivateSpecialPower;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         if(this.§2"r§)
         {
            this.§2"r§.§5!H§(param2);
         }
         if(this.§>#+§ && §]h§.getCurrentAnimationName() != §9!b§)
         {
            §]h§.setAnimation(§9!b§);
         }
         super.update(param1,param2);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override protected function handleInitialCollision() : void
      {
         this.§>#+§ = true;
         super.handleInitialCollision();
      }
      
      override public function updateBeforeRemoving(param1:§""M§) : void
      {
         super.updateBeforeRemoving(param1);
         if(this.§2"r§)
         {
            if(param1)
            {
               param1.removeObject(this.§2"r§,false);
            }
            this.§2"r§ = null;
         }
      }
   }
}
