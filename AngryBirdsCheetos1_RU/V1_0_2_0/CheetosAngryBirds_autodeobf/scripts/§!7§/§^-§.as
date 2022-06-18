package §!7§
{
   import §,H§.Sprite;
   import §-!;§.§4^§;
   import §-!;§.§^!,§;
   import §-A§.§ '§;
   import §-A§.§^!F§;
   import §@!W§.§8!W§;
   
   public class §^-§ extends §^!F§
   {
      
      private static const §-4§:Number = 3;
      
      public static const §in§:Number = 0.75;
       
      
      private var §>s§:§4^§ = null;
      
      private var §;K§:Object;
      
      public function §^-§(param1:§ '§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§;K§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §<F§(param1:Number, param2:Number, param3:Boolean = true) : §4^§
      {
         §1!"§ = false;
         §`t§ = -1;
         this.§;K§.x = §,!_§;
         this.§;K§.y = §4b§;
         this.§;K§.rotation = §7e§;
         if(param3)
         {
            this.§>s§ = §^!,§.§0!S§.§"!Y§(§^!,§.§0!S§.§3n§(this.§;K§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§;K§.x,
               "rotation":0
            },§in§),§^!,§.§0!S§.§^L§(§^!,§.§0!S§.§3n§(this.§;K§,{"y":this.§;K§.y - §-4§},{"y":this.§;K§.y},§in§ / 2,§^!,§.§@!^§),§^!,§.§0!S§.§3n§(this.§;K§,{"y":param2},{"y":this.§;K§.y - §-4§},§in§ / 2,§^!,§.§`!?§)));
         }
         else
         {
            this.§>s§ = §^!,§.§0!S§.§3n§(null,null,null,§^-§.§in§);
         }
         this.§>s§.§?v§ = false;
         this.§>s§.play();
         this.§>s§.onComplete = this.§8'§;
         return this.§>s§;
      }
      
      private function §8'§() : void
      {
         this.§>s§ = null;
         §7e§ = this.§;K§.rotation;
         setPosition(this.§;K§.x,this.§;K§.y);
         §1!"§ = false;
         §`t§ = -1;
         (§8!W§.§=X§ as §=!3§).slingshot.setSlingShotState(§ '§.§#h§);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§>s§ != null)
         {
            if(§8!W§.isPaused)
            {
               this.§>s§.§-'§();
            }
            else
            {
               this.§>s§.play();
            }
            §7e§ = this.§;K§.rotation;
            setPosition(this.§;K§.x,this.§;K§.y);
            §4I§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§>s§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§>s§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
