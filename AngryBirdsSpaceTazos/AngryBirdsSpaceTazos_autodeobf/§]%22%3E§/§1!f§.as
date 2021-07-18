package §]">§
{
   import §"!&§.§+W§;
   import §'4§.§1!+§;
   import §'4§.§3!n§;
   import §7!8§.Sprite;
   import §=u§.§!D§;
   import §=u§.§3!m§;
   import §=u§.§5!9§;
   
   public class §1!f§ extends §1!+§
   {
      
      private static const §+d§:Number = 20;
      
      private static const §@J§:Number = 720;
      
      public static const §`!s§:Number = 1.5;
       
      
      private var §@!c§:Object;
      
      private var §5%§:§5!9§ = null;
      
      public function §1!f§(param1:§3!n§, param2:Sprite, param3:String, param4:§+W§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         this.§@!c§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function §>V§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §@!J§ = false;
         §5d§ = -1;
         this.§@!c§.x = param1;
         this.§@!c§.y = param2;
         this.§@!c§.rotation = §0!$§;
         if(param5)
         {
            this.§5%§ = §3!m§.§[!1§.§"!D§(§3!m§.§[!1§.§7!$§(§3!m§.§[!1§.§1"<§(this.§@!c§,{"y":param4 - §+d§},{"y":param2},§`!s§ / 2,§!D§.§!!R§),§3!m§.§[!1§.§1"<§(this.§@!c§,{"y":param4},{"y":param4 - §+d§},§`!s§ / 2,§!D§.§=!t§)),§3!m§.§[!1§.§1"<§(this.§@!c§,{
               "x":param3,
               "rotation":§0!$§ - §@J§
            },null,§`!s§));
         }
         else
         {
            this.§5%§ = §3!m§.§[!1§.§1"<§(null,null,null,§`!s§);
         }
         this.§5%§.onComplete = this.§0Z§;
      }
      
      private function §0Z§() : void
      {
         this.§5%§ = null;
         §1"3§ = this.§@!c§.rotation;
         §#!O§ = §0!$§;
         setPosition(this.§@!c§.x,this.§@!c§.y);
         §@!J§ = false;
         §5d§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§5%§ != null)
         {
            if(this.§5%§.isPaused)
            {
               this.§5%§.play();
            }
            setPosition(this.§@!c§.x,this.§@!c§.y);
            §1"3§ = this.§@!c§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§5%§ && this.§5%§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §%">§() : Boolean
      {
         if(this.§5%§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§5%§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§5%§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
