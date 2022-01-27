package §+!J§
{
   import §#!T§.§&2§;
   import §2!D§.§&9§;
   import §2!D§.§'!7§;
   import §2z§.§@!N§;
   import §2z§.§]'§;
   import §=!E§.Sprite;
   import §]!C§.§'!!§;
   
   public class §&!5§ extends §]'§
   {
      
      private static const §<5§:Number = 10;
      
      public static const §`b§:Number = 1;
       
      
      private var §&§:§&9§ = null;
      
      private var §",§:Object;
      
      private var §#!K§:Boolean;
      
      public function §&!5§(param1:§@!N§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§",§ = new Object();
         this.§#!K§ = false;
         super(param1,param2,param3,param4,param5);
      }
      
      public function §>!5§() : void
      {
         this.§#!K§ = true;
         this.setPivotTexture(§?!F§.getSubAnimation("normal").getFrame(0));
      }
      
      public function §7!]§(param1:Number, param2:Number, param3:Boolean = true) : §&9§
      {
         §5!]§ = false;
         §,!f§ = -1;
         this.§",§.x = §[!#§;
         this.§",§.y = §?=§;
         this.§",§.rotation = §7!,§;
         if(param3)
         {
            this.§&§ = §'!7§.§=,§.§?!3§(§'!7§.§=,§.§5Z§(this.§",§,{
               "x":param1,
               "rotation":-360
            },null,§`b§),§'!7§.§=,§.§,!U§(§'!7§.§=,§.§5Z§(this.§",§,{"y":this.§",§.y - §<5§},null,§`b§ / 2,§'!7§.§1!N§),§'!7§.§=,§.§5Z§(this.§",§,{"y":param2},{"y":this.§",§.y - §<5§},§`b§ / 2,§'!7§.§,!S§)));
         }
         else
         {
            this.§&§ = §'!7§.§=,§.§5Z§(null,null,null,§&!5§.§`b§);
         }
         this.§&§.play();
         this.§&§.onComplete = this.§^!0§;
         return this.§&§;
      }
      
      private function §^!0§() : void
      {
         ((§&2§.§4!1§ as §&7§).slingshot as §#7§).§?#§();
         this.§&§ = null;
         §7!,§ = this.§",§.rotation;
         setPosition(this.§",§.x,this.§",§.y);
         §5!]§ = false;
         §,!f§ = -1;
      }
      
      override public function setPivotTexture(param1:§'!!§) : void
      {
         if(this.§#!K§ == false)
         {
            super.setPivotTexture(§?!F§.getSubAnimation("no_helmet").getFrame(0));
         }
         else
         {
            super.setPivotTexture(param1);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§&§ != null)
         {
            §7!,§ = this.§",§.rotation;
            setPosition(this.§",§.x,this.§",§.y);
            §2!e§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§&§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§&§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
