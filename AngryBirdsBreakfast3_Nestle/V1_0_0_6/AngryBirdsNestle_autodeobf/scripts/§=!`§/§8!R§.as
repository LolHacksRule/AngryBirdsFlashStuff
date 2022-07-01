package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §6t§.§&2§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §]k§.§-! §;
   import §]k§.§>!x§;
   
   public class §8!R§ extends §-! §
   {
      
      private static const §0!W§:Number = 20;
      
      private static const §`[§:Number = 720;
      
      public static const §2[§:Number = 1.5;
       
      
      private var §&A§:Object;
      
      private var §2"0§:§<!'§ = null;
      
      public function §8!R§(param1:§>!x§, param2:Sprite, param3:String, param4:§9!n§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         this.§&A§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function §`7§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §implements§ = false;
         §5R§ = -1;
         this.§&A§.x = param1;
         this.§&A§.y = param2;
         this.§&A§.rotation = §%!2§;
         if(param5)
         {
            this.§2"0§ = §&2§.§<"5§.§,!k§(§&2§.§<"5§.§"!z§(§&2§.§<"5§.§^g§(this.§&A§,{"y":param4 - §0!W§},{"y":param2},§2[§ / 2,§3`§.§#!!§),§&2§.§<"5§.§^g§(this.§&A§,{"y":param4},{"y":param4 - §0!W§},§2[§ / 2,§3`§.§%!$§)),§&2§.§<"5§.§^g§(this.§&A§,{
               "x":param3,
               "rotation":§%!2§ - §`[§
            },null,§2[§));
         }
         else
         {
            this.§2"0§ = §&2§.§<"5§.§^g§(null,null,null,§2[§);
         }
         this.§2"0§.onComplete = this.§ @§;
      }
      
      private function § @§() : void
      {
         this.§2"0§ = null;
         §'j§ = this.§&A§.rotation;
         §"!N§ = §%!2§;
         setPosition(this.§&A§.x,this.§&A§.y);
         §implements§ = false;
         §5R§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§2"0§ != null)
         {
            if(this.§2"0§.isPaused)
            {
               this.§2"0§.play();
            }
            setPosition(this.§&A§.x,this.§&A§.y);
            §'j§ = this.§&A§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§2"0§ && this.§2"0§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §2C§() : Boolean
      {
         if(this.§2"0§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§2"0§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§2"0§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
