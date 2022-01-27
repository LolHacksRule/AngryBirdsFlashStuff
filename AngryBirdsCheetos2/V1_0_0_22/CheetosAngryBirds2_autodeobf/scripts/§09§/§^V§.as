package §09§
{
   import §,§.§ 3§;
   import §,§.§7!N§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §^V§ extends § 3§
   {
      
      private static const §[B§:Number = 3;
      
      public static const §3N§:Number = 0.75;
       
      
      private var §!F§:§7g§ = null;
      
      private var §2!'§:Object;
      
      public function §^V§(param1:§7!N§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§2!'§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §,!§(param1:Number, param2:Number, param3:Boolean = true) : §7g§
      {
         §@!`§ = false;
         §56§ = -1;
         this.§2!'§.x = §7F§;
         this.§2!'§.y = §6_§;
         this.§2!'§.rotation = §!!&§;
         if(param3)
         {
            this.§!F§ = §%g§.§'I§.§!!7§(§%g§.§'I§.§5!0§(this.§2!'§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§2!'§.x,
               "rotation":0
            },§3N§),§%g§.§'I§.§9!Y§(§%g§.§'I§.§5!0§(this.§2!'§,{"y":this.§2!'§.y - §[B§},{"y":this.§2!'§.y},§3N§ / 2,§%g§.§?W§),§%g§.§'I§.§5!0§(this.§2!'§,{"y":param2},{"y":this.§2!'§.y - §[B§},§3N§ / 2,§%g§.§"!3§)));
         }
         else
         {
            this.§!F§ = §%g§.§'I§.§5!0§(null,null,null,§^V§.§3N§);
         }
         this.§!F§.§8!F§ = false;
         this.§!F§.play();
         this.§!F§.onComplete = this.§#!+§;
         return this.§!F§;
      }
      
      private function §#!+§() : void
      {
         this.§!F§ = null;
         §!!&§ = this.§2!'§.rotation;
         setPosition(this.§2!'§.x,this.§2!'§.y);
         §@!`§ = false;
         §56§ = -1;
         (§@!Z§.§;!,§ as § $§).slingshot.setSlingShotState(§7!N§.§4!G§);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§!F§ != null)
         {
            if(§@!Z§.isPaused)
            {
               this.§!F§.§@0§();
            }
            else
            {
               this.§!F§.play();
            }
            §!!&§ = this.§2!'§.rotation;
            setPosition(this.§2!'§.x,this.§2!'§.y);
            §3u§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§!F§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§!F§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
