package §0&§
{
   import §1!A§.Sprite;
   import §6!P§.§88§;
   import §6!P§.§^!>§;
   import §7z§.§&!>§;
   import §7z§.§0!D§;
   import §;!X§.§7`§;
   
   public class §0z§ extends §&!>§
   {
      
      private static const §9!T§:Number = 3;
      
      public static const §1!#§:Number = 0.75;
       
      
      private var §<!%§:§88§ = null;
      
      private var §]V§:Object;
      
      public function §0z§(param1:§0!D§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§]V§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §;!A§(param1:Number, param2:Number, param3:Boolean = true) : §88§
      {
         §[m§ = false;
         §3B§ = -1;
         this.§]V§.x = §6!Z§;
         this.§]V§.y = §,!A§;
         this.§]V§.rotation = §3!`§;
         if(param3)
         {
            this.§<!%§ = §^!>§.§[P§.§#n§(§^!>§.§[P§.§@m§(this.§]V§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§]V§.x,
               "rotation":0
            },§1!#§),§^!>§.§[P§.§[!L§(§^!>§.§[P§.§@m§(this.§]V§,{"y":this.§]V§.y - §9!T§},{"y":this.§]V§.y},§1!#§ / 2,§^!>§.§[!-§),§^!>§.§[P§.§@m§(this.§]V§,{"y":param2},{"y":this.§]V§.y - §9!T§},§1!#§ / 2,§^!>§.§;Q§)));
         }
         else
         {
            this.§<!%§ = §^!>§.§[P§.§@m§(null,null,null,§0z§.§1!#§);
         }
         this.§<!%§.§"!$§ = false;
         this.§<!%§.play();
         this.§<!%§.onComplete = this.§8![§;
         return this.§<!%§;
      }
      
      private function §8![§() : void
      {
         this.§<!%§ = null;
         §3!`§ = this.§]V§.rotation;
         setPosition(this.§]V§.x,this.§]V§.y);
         §[m§ = false;
         §3B§ = -1;
         (§7`§.§2'§ as §@o§).slingshot.setSlingShotState(§0!D§.§%2§);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§<!%§ != null)
         {
            if(§7`§.isPaused)
            {
               this.§<!%§.§,-§();
            }
            else
            {
               this.§<!%§.play();
            }
            §3!`§ = this.§]V§.rotation;
            setPosition(this.§]V§.x,this.§]V§.y);
            §3!&§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§<!%§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§<!%§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
