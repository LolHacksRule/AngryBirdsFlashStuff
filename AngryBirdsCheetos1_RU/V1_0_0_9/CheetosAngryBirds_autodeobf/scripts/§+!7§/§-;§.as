package §+!7§
{
   import §!>§.§!#§;
   import §!>§.§5!$§;
   import §3E§.§>o§;
   import §3E§.§]Y§;
   import §7!U§.§2!7§;
   import §7u§.Sprite;
   
   public class §-;§ extends §>o§
   {
      
      private static const §6!§:Number = 3;
      
      public static const §#[§:Number = 0.75;
       
      
      private var §8!T§:§5!$§ = null;
      
      private var §@-§:Object;
      
      public function §-;§(param1:§]Y§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§@-§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §;b§(param1:Number, param2:Number, param3:Boolean = true) : §5!$§
      {
         §>]§ = false;
         §"&§ = -1;
         this.§@-§.x = §,G§;
         this.§@-§.y = §-+§;
         this.§@-§.rotation = §<n§;
         if(param3)
         {
            this.§8!T§ = §!#§.§!5§.§^!;§(§!#§.§!5§.§&![§(this.§@-§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§@-§.x,
               "rotation":0
            },§#[§),§!#§.§!5§.§&i§(§!#§.§!5§.§&![§(this.§@-§,{"y":this.§@-§.y - §6!§},{"y":this.§@-§.y},§#[§ / 2,§!#§.§<Z§),§!#§.§!5§.§&![§(this.§@-§,{"y":param2},{"y":this.§@-§.y - §6!§},§#[§ / 2,§!#§.§1]§)));
         }
         else
         {
            this.§8!T§ = §!#§.§!5§.§&![§(null,null,null,§-;§.§#[§);
         }
         this.§8!T§.§-!$§ = false;
         this.§8!T§.play();
         this.§8!T§.onComplete = this.§-j§;
         return this.§8!T§;
      }
      
      private function §-j§() : void
      {
         this.§8!T§ = null;
         §<n§ = this.§@-§.rotation;
         setPosition(this.§@-§.x,this.§@-§.y);
         §>]§ = false;
         §"&§ = -1;
         (§2!7§.§5G§ as §'u§).slingshot.setSlingShotState(§]Y§.§?!H§);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§8!T§ != null)
         {
            if(§2!7§.isPaused)
            {
               this.§8!T§.§9!V§();
            }
            else
            {
               this.§8!T§.play();
            }
            §<n§ = this.§@-§.rotation;
            setPosition(this.§@-§.x,this.§@-§.y);
            §%P§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§8!T§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§8!T§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
