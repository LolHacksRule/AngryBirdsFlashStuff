package §2!k§
{
   import § !=§.Sprite;
   import §-b§.§"!d§;
   import §-b§.§4"0§;
   import §-b§.§4`§;
   import §[^§.§`!M§;
   import §]A§.§0n§;
   import §]A§.§]"!§;
   
   public class §&!>§ extends §0n§
   {
      
      private static const §5!C§:Number = 20;
      
      private static const §"!z§:Number = 720;
      
      public static const §0B§:Number = 1.5;
       
      
      private var §7e§:Object;
      
      private var §`!V§:§4`§ = null;
      
      public function §&!>§(param1:§]"!§, param2:Sprite, param3:String, param4:§`!M§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         this.§7e§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function §!!e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §-!7§ = false;
         §`!C§ = -1;
         this.§7e§.x = param1;
         this.§7e§.y = param2;
         this.§7e§.rotation = §2!]§;
         if(param5)
         {
            this.§`!V§ = §4"0§.§>!P§.§'!5§(§4"0§.§>!P§.§8!h§(§4"0§.§>!P§.§7R§(this.§7e§,{"y":param4 - §5!C§},{"y":param2},§0B§ / 2,§"!d§.§[!v§),§4"0§.§>!P§.§7R§(this.§7e§,{"y":param4},{"y":param4 - §5!C§},§0B§ / 2,§"!d§.§9]§)),§4"0§.§>!P§.§7R§(this.§7e§,{
               "x":param3,
               "rotation":§2!]§ - §"!z§
            },null,§0B§));
         }
         else
         {
            this.§`!V§ = §4"0§.§>!P§.§7R§(null,null,null,§0B§);
         }
         this.§`!V§.onComplete = this.§%g§;
      }
      
      private function §%g§() : void
      {
         this.§`!V§ = null;
         §;f§ = this.§7e§.rotation;
         §6H§ = §2!]§;
         setPosition(this.§7e§.x,this.§7e§.y);
         §-!7§ = false;
         §`!C§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§`!V§ != null)
         {
            if(this.§`!V§.isPaused)
            {
               this.§`!V§.play();
            }
            setPosition(this.§7e§.x,this.§7e§.y);
            §;f§ = this.§7e§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§`!V§ && this.§`!V§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §5!z§() : Boolean
      {
         if(this.§`!V§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§`!V§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§`!V§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
