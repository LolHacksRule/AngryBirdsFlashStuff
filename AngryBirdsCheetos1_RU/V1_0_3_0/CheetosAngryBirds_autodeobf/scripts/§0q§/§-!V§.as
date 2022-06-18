package §0q§
{
   import §"Z§.§-N§;
   import §"Z§.§5!2§;
   import §+!^§.§'Y§;
   import §9!a§.Sprite;
   import §9T§.§#!4§;
   import §9T§.§%!_§;
   
   public class §-!V§ extends §%!_§
   {
      
      private static const §?!S§:Number = 3;
      
      public static const §]!2§:Number = 0.75;
       
      
      private var §-!9§:§5!2§ = null;
      
      private var §-!C§:Object;
      
      public function §-!V§(param1:§#!4§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§-!C§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §]p§(param1:Number, param2:Number, param3:Boolean = true) : §5!2§
      {
         §0G§ = false;
         §,r§ = -1;
         this.§-!C§.x = §!-§;
         this.§-!C§.y = §[4§;
         this.§-!C§.rotation = §0x§;
         if(param3)
         {
            this.§-!9§ = §-N§.§<?§.§4t§(§-N§.§<?§.§,!D§(this.§-!C§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§-!C§.x,
               "rotation":0
            },§]!2§),§-N§.§<?§.§@!N§(§-N§.§<?§.§,!D§(this.§-!C§,{"y":this.§-!C§.y - §?!S§},{"y":this.§-!C§.y},§]!2§ / 2,§-N§.§?!T§),§-N§.§<?§.§,!D§(this.§-!C§,{"y":param2},{"y":this.§-!C§.y - §?!S§},§]!2§ / 2,§-N§.§7!V§)));
         }
         else
         {
            this.§-!9§ = §-N§.§<?§.§,!D§(null,null,null,§-!V§.§]!2§);
         }
         this.§-!9§.§ else§ = false;
         this.§-!9§.play();
         this.§-!9§.onComplete = this.§+!%§;
         return this.§-!9§;
      }
      
      private function §+!%§() : void
      {
         this.§-!9§ = null;
         §0x§ = this.§-!C§.rotation;
         setPosition(this.§-!C§.x,this.§-!C§.y);
         §0G§ = false;
         §,r§ = -1;
         (§'Y§.§@j§ as §7+§).slingshot.setSlingShotState(§#!4§.§]7§);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§-!9§ != null)
         {
            if(§'Y§.isPaused)
            {
               this.§-!9§.§ D§();
            }
            else
            {
               this.§-!9§.play();
            }
            §0x§ = this.§-!C§.rotation;
            setPosition(this.§-!C§.x,this.§-!C§.y);
            §'!L§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§-!9§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§-!9§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
