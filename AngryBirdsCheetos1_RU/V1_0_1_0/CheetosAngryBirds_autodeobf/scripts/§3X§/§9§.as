package §3X§
{
   import §!!V§.§%§;
   import §!!V§.§<!>§;
   import §"!S§.§"_§;
   import §&!5§.Sprite;
   import §4x§.§"!X§;
   import §4x§.§?R§;
   
   public class §9§ extends §%§
   {
      
      private static const §=R§:Number = 3;
      
      public static const §<T§:Number = 0.75;
       
      
      private var §%&§:§?R§ = null;
      
      private var §'!>§:Object;
      
      public function §9§(param1:§<!>§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§'!>§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §9K§(param1:Number, param2:Number, param3:Boolean = true) : §?R§
      {
         §%!6§ = false;
         §;!V§ = -1;
         this.§'!>§.x = § !2§;
         this.§'!>§.y = §'!F§;
         this.§'!>§.rotation = §>!]§;
         if(param3)
         {
            this.§%&§ = §"!X§.§0E§.§;g§(§"!X§.§0E§.§5`§(this.§'!>§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§'!>§.x,
               "rotation":0
            },§<T§),§"!X§.§0E§.§[!1§(§"!X§.§0E§.§5`§(this.§'!>§,{"y":this.§'!>§.y - §=R§},{"y":this.§'!>§.y},§<T§ / 2,§"!X§.§2@§),§"!X§.§0E§.§5`§(this.§'!>§,{"y":param2},{"y":this.§'!>§.y - §=R§},§<T§ / 2,§"!X§.§3L§)));
         }
         else
         {
            this.§%&§ = §"!X§.§0E§.§5`§(null,null,null,§9§.§<T§);
         }
         this.§%&§.§+&§ = false;
         this.§%&§.play();
         this.§%&§.onComplete = this.§@>§;
         return this.§%&§;
      }
      
      private function §@>§() : void
      {
         this.§%&§ = null;
         §>!]§ = this.§'!>§.rotation;
         setPosition(this.§'!>§.x,this.§'!>§.y);
         §%!6§ = false;
         §;!V§ = -1;
         (§"_§.§+!^§ as §#!B§).slingshot.setSlingShotState(§<!>§.dynamic);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§%&§ != null)
         {
            if(§"_§.isPaused)
            {
               this.§%&§.§5q§();
            }
            else
            {
               this.§%&§.play();
            }
            §>!]§ = this.§'!>§.rotation;
            setPosition(this.§'!>§.x,this.§'!>§.y);
            §9B§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§%&§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§%&§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
