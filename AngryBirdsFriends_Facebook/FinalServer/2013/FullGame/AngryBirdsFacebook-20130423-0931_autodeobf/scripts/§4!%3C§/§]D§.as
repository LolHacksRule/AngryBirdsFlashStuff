package §4!<§
{
   import §'!6§.Sprite;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   
   public class §]D§ extends § !X§
   {
      
      private static const §&"G§:Number = 10;
      
      public static const §?!p§:Number = 1;
       
      
      private var §3!'§:§6!K§ = null;
      
      private var §'L§:Object;
      
      private var §?!0§:Boolean = false;
      
      public function §]D§(param1:§&=§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§'L§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §<"N§(param1:Number, param2:Number, param3:Boolean = true) : §6!K§
      {
         §+5§ = false;
         §8!T§ = -1;
         this.§'L§.x = §4!K§;
         this.§'L§.y = §7!#§;
         this.§'L§.rotation = §!"W§;
         if(param3)
         {
            this.§3!'§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(this.§'L§,{
               "x":param1,
               "rotation":-360
            },null,§?!p§),§0W§.§&"5§.§%G§(§0W§.§&"5§.§]!r§(this.§'L§,{"y":this.§'L§.y - §&"G§},null,§?!p§ / 2,§0W§.§'I§),§0W§.§&"5§.§]!r§(this.§'L§,{"y":param2},{"y":this.§'L§.y - §&"G§},§?!p§ / 2,§0W§.§"q§)));
         }
         else
         {
            this.§3!'§ = §0W§.§&"5§.§]!r§(null,null,null,§]D§.§?!p§);
         }
         this.§3!'§.play();
         this.§3!'§.onComplete = this.§[§;
         return this.§3!'§;
      }
      
      private function §[§() : void
      {
         this.§3!'§ = null;
         §!"W§ = this.§'L§.rotation;
         setPosition(this.§'L§.x,this.§'L§.y);
         §+5§ = false;
         §8!T§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§3!'§ != null)
         {
            §!"W§ = this.§'L§.rotation;
            setPosition(this.§'L§.x,this.§'L§.y);
            §]`§();
            this.§3!'§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§3!'§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§3!'§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §;"F§() : Boolean
      {
         return this.§?!0§;
      }
      
      public function set §;"F§(param1:Boolean) : void
      {
         this.§?!0§ = param1;
      }
   }
}
