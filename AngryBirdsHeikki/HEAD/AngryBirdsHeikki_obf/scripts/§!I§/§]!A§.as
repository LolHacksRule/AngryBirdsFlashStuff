package §!I§
{
   import §+!]§.§+!=§;
   import §1!d§.§!![§;
   import §1!d§.§9m§;
   import §6!;§.Sprite;
   import §8O§.§&#§;
   import §9!'§.§91§;
   import §9!'§.§@!U§;
   
   public class §]!A§ extends §91§
   {
      
      private static const §'B§:Number = 10;
      
      public static const §<!B§:Number = 1;
       
      
      private var §-!K§:§!![§ = null;
      
      private var §5R§:Object;
      
      private var §@b§:Boolean;
      
      public function §]!A§(param1:§@!U§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§5R§ = new Object();
         this.§@b§ = false;
         super(param1,param2,param3,param4,param5);
      }
      
      public function §'!E§() : void
      {
         this.§@b§ = true;
         this.setPivotTexture(§&b§.getSubAnimation("normal").getFrame(0));
      }
      
      public function §%#§(param1:Number, param2:Number, param3:Boolean = true) : §!![§
      {
         §%!1§ = false;
         §<T§ = -1;
         this.§5R§.x = §5T§;
         this.§5R§.y = §![§;
         this.§5R§.rotation = §+U§;
         if(param3)
         {
            this.§-!K§ = §9m§.§?! §.§7!@§(§9m§.§?! §.§]C§(this.§5R§,{
               "x":param1,
               "rotation":-360
            },null,§<!B§),§9m§.§?! §.§9w§(§9m§.§?! §.§]C§(this.§5R§,{"y":this.§5R§.y - §'B§},null,§<!B§ / 2,§9m§.§5?§),§9m§.§?! §.§]C§(this.§5R§,{"y":param2},{"y":this.§5R§.y - §'B§},§<!B§ / 2,§9m§.§'!;§)));
         }
         else
         {
            this.§-!K§ = §9m§.§?! §.§]C§(null,null,null,§]!A§.§<!B§);
         }
         this.§-!K§.play();
         this.§-!K§.onComplete = this.§[!"§;
         return this.§-!K§;
      }
      
      private function §[!"§() : void
      {
         ((§&#§.§3!D§ as §18§).slingshot as §8!!§).§&-§();
         this.§-!K§ = null;
         §+U§ = this.§5R§.rotation;
         setPosition(this.§5R§.x,this.§5R§.y);
         §%!1§ = false;
         §<T§ = -1;
      }
      
      override public function setPivotTexture(param1:§+!=§) : void
      {
         if(this.§@b§ == false)
         {
            super.setPivotTexture(§&b§.getSubAnimation("no_helmet").getFrame(0));
         }
         else
         {
            super.setPivotTexture(param1);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§-!K§ != null)
         {
            §+U§ = this.§5R§.rotation;
            setPosition(this.§5R§.x,this.§5R§.y);
            §>4§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§-!K§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§-!K§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
