package §&!T§
{
   import §"!I§.§9§;
   import §"!I§.§94§;
   import §2Y§.Sprite;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §9b§.§"!S§;
   import §=!<§.§8!!§;
   
   public class §^"§ extends §94§
   {
      
      private static const §@p§:Number = 10;
      
      public static const §]`§:Number = 1;
       
      
      private var §=S§:§&[§ = null;
      
      private var §2J§:Object;
      
      private var § !b§:Boolean;
      
      public function §^"§(param1:§9§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§2J§ = new Object();
         this.§ !b§ = false;
         super(param1,param2,param3,param4,param5);
      }
      
      public function §;b§() : void
      {
         this.§ !b§ = true;
         this.setPivotTexture(§&!e§.getSubAnimation("normal").getFrame(0));
      }
      
      public function §;o§(param1:Number, param2:Number, param3:Boolean = true) : §&[§
      {
         §3+§ = false;
         §3`§ = -1;
         this.§2J§.x = §"!d§;
         this.§2J§.y = §,!W§;
         this.§2J§.rotation = §^Y§;
         if(param3)
         {
            this.§=S§ = §"!X§.§ s§.§=!,§(§"!X§.§ s§.§%!;§(this.§2J§,{
               "x":param1,
               "rotation":-360
            },null,§]`§),§"!X§.§ s§.§0<§(§"!X§.§ s§.§%!;§(this.§2J§,{"y":this.§2J§.y - §@p§},null,§]`§ / 2,§"!X§.§%!5§),§"!X§.§ s§.§%!;§(this.§2J§,{"y":param2},{"y":this.§2J§.y - §@p§},§]`§ / 2,§"!X§.§=!K§)));
         }
         else
         {
            this.§=S§ = §"!X§.§ s§.§%!;§(null,null,null,§^"§.§]`§);
         }
         this.§=S§.play();
         this.§=S§.onComplete = this.§;!<§;
         return this.§=S§;
      }
      
      private function §;!<§() : void
      {
         ((§"!S§.§-!7§ as §<!,§).slingshot as §%%§).§9!]§();
         this.§=S§ = null;
         §^Y§ = this.§2J§.rotation;
         setPosition(this.§2J§.x,this.§2J§.y);
         §3+§ = false;
         §3`§ = -1;
      }
      
      override public function setPivotTexture(param1:§8!!§) : void
      {
         if(this.§ !b§ == false)
         {
            super.setPivotTexture(§&!e§.getSubAnimation("no_helmet").getFrame(0));
         }
         else
         {
            super.setPivotTexture(param1);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§=S§ != null)
         {
            §^Y§ = this.§2J§.rotation;
            setPosition(this.§2J§.x,this.§2J§.y);
            §1![§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§=S§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§=S§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
