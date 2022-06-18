package §9!S§
{
   import §0V§.§6!G§;
   import §0V§.§^K§;
   import §3§.Sprite;
   import §6!S§.§!<§;
   import §6!S§.§,!9§;
   import §^Q§.§,^§;
   
   public class §%!%§ extends §6!G§
   {
      
      private static const §8!'§:Number = 3;
      
      public static const §;N§:Number = 0.75;
       
      
      private var §7K§:§,!9§ = null;
      
      private var §#6§:Object;
      
      public function §%!%§(param1:§^K§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§#6§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §-!R§(param1:Number, param2:Number, param3:Boolean = true) : §,!9§
      {
         §4s§ = false;
         §"8§ = -1;
         this.§#6§.x = § W§;
         this.§#6§.y = §9!9§;
         this.§#6§.rotation = §],§;
         if(param3)
         {
            this.§7K§ = §!<§.§%b§.§'T§(§!<§.§%b§.§9!!§(this.§#6§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§#6§.x,
               "rotation":0
            },§;N§),§!<§.§%b§.§3!$§(§!<§.§%b§.§9!!§(this.§#6§,{"y":this.§#6§.y - §8!'§},{"y":this.§#6§.y},§;N§ / 2,§!<§.§>!%§),§!<§.§%b§.§9!!§(this.§#6§,{"y":param2},{"y":this.§#6§.y - §8!'§},§;N§ / 2,§!<§.§<V§)));
         }
         else
         {
            this.§7K§ = §!<§.§%b§.§9!!§(null,null,null,§%!%§.§;N§);
         }
         this.§7K§.§@!X§ = false;
         this.§7K§.play();
         this.§7K§.onComplete = this.§9a§;
         return this.§7K§;
      }
      
      private function §9a§() : void
      {
         this.§7K§ = null;
         §],§ = this.§#6§.rotation;
         setPosition(this.§#6§.x,this.§#6§.y);
         §4s§ = false;
         §"8§ = -1;
         (§,^§.§0K§ as §+!=§).slingshot.setSlingShotState(§^K§.§7M§);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§7K§ != null)
         {
            if(§,^§.isPaused)
            {
               this.§7K§.§9!§();
            }
            else
            {
               this.§7K§.play();
            }
            §],§ = this.§#6§.rotation;
            setPosition(this.§#6§.x,this.§#6§.y);
            §7B§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§7K§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§7K§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
