package §9"!§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §#!O§.§if§;
   import §&!]§.Sprite;
   import §3"#§.§0k§;
   import §3"#§.§=![§;
   import §3>§.§1!;§;
   
   public class §'N§ extends §=![§
   {
      
      private static const §,!g§:Number = 20;
      
      private static const §#!7§:Number = 720;
      
      public static const §+<§:Number = 1.5;
       
      
      private var §9!!§:Object;
      
      private var §5!"§:§,4§ = null;
      
      public function §'N§(param1:§0k§, param2:Sprite, param3:String, param4:§1!;§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         this.§9!!§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function §<"8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §4!$§ = false;
         §1!=§ = -1;
         this.§9!!§.x = param1;
         this.§9!!§.y = param2;
         this.§9!!§.rotation = §@!V§;
         if(param5)
         {
            this.§5!"§ = §if§.§3R§.§!!G§(§if§.§3R§.§&"9§(§if§.§3R§.§2m§(this.§9!!§,{"y":param4 - §,!g§},{"y":param2},§+<§ / 2,§"!t§.§]!o§),§if§.§3R§.§2m§(this.§9!!§,{"y":param4},{"y":param4 - §,!g§},§+<§ / 2,§"!t§.§&!p§)),§if§.§3R§.§2m§(this.§9!!§,{
               "x":param3,
               "rotation":§@!V§ - §#!7§
            },null,§+<§));
         }
         else
         {
            this.§5!"§ = §if§.§3R§.§2m§(null,null,null,§+<§);
         }
         this.§5!"§.onComplete = this.§8"<§;
      }
      
      private function §8"<§() : void
      {
         this.§5!"§ = null;
         § "F§ = this.§9!!§.rotation;
         §,!a§ = §@!V§;
         setPosition(this.§9!!§.x,this.§9!!§.y);
         §4!$§ = false;
         §1!=§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§5!"§ != null)
         {
            if(this.§5!"§.isPaused)
            {
               this.§5!"§.play();
            }
            setPosition(this.§9!!§.x,this.§9!!§.y);
            § "F§ = this.§9!!§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§5!"§ && this.§5!"§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §,"&§() : Boolean
      {
         if(this.§5!"§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§5!"§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§5!"§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
