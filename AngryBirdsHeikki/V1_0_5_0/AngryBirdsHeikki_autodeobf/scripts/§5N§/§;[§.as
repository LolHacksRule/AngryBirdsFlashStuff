package §5N§
{
   import §+D§.§">§;
   import §+D§.§5@§;
   import §3-§.§1L§;
   import §>!_§.§2V§;
   import §>!_§.§9!+§;
   import §[=§.Sprite;
   import §`!H§.§5f§;
   
   public class §;[§ extends §">§
   {
      
      private static const §^n§:Number = 10;
      
      public static const §"c§:Number = 1;
       
      
      private var §#h§:§2V§ = null;
      
      private var §'4§:Object;
      
      private var §"^§:Boolean;
      
      public function §;[§(param1:§5@§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§'4§ = new Object();
         this.§"^§ = false;
         super(param1,param2,param3,param4,param5);
      }
      
      public function §>4§() : void
      {
         this.§"^§ = true;
         this.setPivotTexture(§9!S§.getSubAnimation("normal").getFrame(0));
      }
      
      public function §;E§(param1:Number, param2:Number, param3:Boolean = true) : §2V§
      {
         § m§ = false;
         §[8§ = -1;
         this.§'4§.x = §<O§;
         this.§'4§.y = §92§;
         this.§'4§.rotation = §>1§;
         if(param3)
         {
            this.§#h§ = §9!+§.§;!F§.§8!C§(§9!+§.§;!F§.§`!'§(this.§'4§,{
               "x":param1,
               "rotation":-360
            },null,§"c§),§9!+§.§;!F§.§9v§(§9!+§.§;!F§.§`!'§(this.§'4§,{"y":this.§'4§.y - §^n§},null,§"c§ / 2,§9!+§.§4!J§),§9!+§.§;!F§.§`!'§(this.§'4§,{"y":param2},{"y":this.§'4§.y - §^n§},§"c§ / 2,§9!+§.§4=§)));
         }
         else
         {
            this.§#h§ = §9!+§.§;!F§.§`!'§(null,null,null,§;[§.§"c§);
         }
         this.§#h§.play();
         this.§#h§.onComplete = this.§=!>§;
         return this.§#h§;
      }
      
      private function §=!>§() : void
      {
         ((§1L§.§"f§ as §7,§).slingshot as §!!I§).§+!N§();
         this.§#h§ = null;
         §>1§ = this.§'4§.rotation;
         setPosition(this.§'4§.x,this.§'4§.y);
         § m§ = false;
         §[8§ = -1;
      }
      
      override public function setPivotTexture(param1:§5f§) : void
      {
         if(this.§"^§ == false)
         {
            super.setPivotTexture(§9!S§.getSubAnimation("no_helmet").getFrame(0));
         }
         else
         {
            super.setPivotTexture(param1);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§#h§ != null)
         {
            §>1§ = this.§'4§.rotation;
            setPosition(this.§'4§.x,this.§'4§.y);
            §8<§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§#h§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§#h§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
