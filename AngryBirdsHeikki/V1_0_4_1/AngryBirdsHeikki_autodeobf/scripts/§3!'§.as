package
{
   import §%O§.§=I§;
   import §6-§.§"H§;
   import §6-§.§%1§;
   import §<!-§.Sprite;
   import §?!P§.§@@§;
   import §^!7§.§]!N§;
   import §^!7§.§]H§;
   
   public class §3!'§ extends §]!N§
   {
      
      private static const §#Y§:Number = 10;
      
      public static const §89§:Number = 1;
       
      
      private var §'a§:§%1§ = null;
      
      private var §9v§:Object;
      
      private var §<$§:Boolean;
      
      public function §3!'§(param1:§]H§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§9v§ = new Object();
         this.§<$§ = false;
         super(param1,param2,param3,param4,param5);
      }
      
      public function §6l§() : void
      {
         this.§<$§ = true;
         this.setPivotTexture(§"!`§.getSubAnimation("normal").getFrame(0));
      }
      
      public function §@U§(param1:Number, param2:Number, param3:Boolean = true) : §%1§
      {
         §[d§ = false;
         §=K§ = -1;
         this.§9v§.x = §-!c§;
         this.§9v§.y = §3![§;
         this.§9v§.rotation = §9!#§;
         if(param3)
         {
            this.§'a§ = §"H§.§'![§.§'!F§(§"H§.§'![§.§8Y§(this.§9v§,{
               "x":param1,
               "rotation":-360
            },null,§89§),§"H§.§'![§.§#!c§(§"H§.§'![§.§8Y§(this.§9v§,{"y":this.§9v§.y - §#Y§},null,§89§ / 2,§"H§.§]!J§),§"H§.§'![§.§8Y§(this.§9v§,{"y":param2},{"y":this.§9v§.y - §#Y§},§89§ / 2,§"H§.§]!H§)));
         }
         else
         {
            this.§'a§ = §"H§.§'![§.§8Y§(null,null,null,§3!'§.§89§);
         }
         this.§'a§.play();
         this.§'a§.onComplete = this.§'R§;
         return this.§'a§;
      }
      
      private function §'R§() : void
      {
         ((§@@§.§ !8§ as §<D§).slingshot as §!E§).§4&§();
         this.§'a§ = null;
         §9!#§ = this.§9v§.rotation;
         setPosition(this.§9v§.x,this.§9v§.y);
         §[d§ = false;
         §=K§ = -1;
      }
      
      override public function setPivotTexture(param1:§=I§) : void
      {
         if(this.§<$§ == false)
         {
            super.setPivotTexture(§"!`§.getSubAnimation("no_helmet").getFrame(0));
         }
         else
         {
            super.setPivotTexture(param1);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§'a§ != null)
         {
            §9!#§ = this.§9v§.rotation;
            setPosition(this.§9v§.x,this.§9v§.y);
            §#G§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§'a§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§'a§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
