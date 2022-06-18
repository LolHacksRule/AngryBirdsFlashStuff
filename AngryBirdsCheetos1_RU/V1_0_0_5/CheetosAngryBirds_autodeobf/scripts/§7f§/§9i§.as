package §7f§
{
   import §%b§.§&b§;
   import §%b§.§=!!§;
   import §'d§.§3>§;
   import §+k§.§+!&§;
   import §+k§.§=! §;
   import §null §.Sprite;
   
   public class §9i§ extends §&b§
   {
      
      private static const §?B§:Number = 3;
      
      public static const §4!+§:Number = 0.75;
       
      
      private var §^+§:§=! § = null;
      
      private var §@Z§:Object;
      
      public function §9i§(param1:§=!!§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§@Z§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §>!1§(param1:Number, param2:Number, param3:Boolean = true) : §=! §
      {
         §@!&§ = false;
         §-K§ = -1;
         this.§@Z§.x = §+!L§;
         this.§@Z§.y = §!;§;
         this.§@Z§.rotation = §71§;
         if(param3)
         {
            this.§^+§ = §+!&§.§,§.§<!6§(§+!&§.§,§.§9x§(this.§@Z§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§@Z§.x,
               "rotation":0
            },§4!+§),§+!&§.§,§.§"]§(§+!&§.§,§.§9x§(this.§@Z§,{"y":this.§@Z§.y - §?B§},{"y":this.§@Z§.y},§4!+§ / 2,§+!&§.§,"§),§+!&§.§,§.§9x§(this.§@Z§,{"y":param2},{"y":this.§@Z§.y - §?B§},§4!+§ / 2,§+!&§.§'C§)));
         }
         else
         {
            this.§^+§ = §+!&§.§,§.§9x§(null,null,null,§9i§.§4!+§);
         }
         this.§^+§.§;U§ = false;
         this.§^+§.play();
         this.§^+§.onComplete = this.§5!S§;
         return this.§^+§;
      }
      
      private function §5!S§() : void
      {
         this.§^+§ = null;
         §71§ = this.§@Z§.rotation;
         setPosition(this.§@Z§.x,this.§@Z§.y);
         §@!&§ = false;
         §-K§ = -1;
         (§3>§.§8!$§ as §@+§).slingshot.setSlingShotState(§=!!§.§#<§);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§^+§ != null)
         {
            if(§3>§.isPaused)
            {
               this.§^+§.§-!>§();
            }
            else
            {
               this.§^+§.play();
            }
            §71§ = this.§@Z§.rotation;
            setPosition(this.§@Z§.x,this.§@Z§.y);
            §2'§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§^+§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§^+§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
