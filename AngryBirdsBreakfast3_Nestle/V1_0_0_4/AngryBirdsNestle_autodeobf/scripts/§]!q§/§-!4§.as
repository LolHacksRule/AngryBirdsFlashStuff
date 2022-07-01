package §]!q§
{
   import §-!f§.Sprite;
   import §0I§.§3]§;
   import §0I§.§;"0§;
   import §5!7§.§3!Y§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §><§.§9!M§;
   
   public class §-!4§ extends §3]§
   {
      
      private static const §`§:Number = 20;
      
      private static const §#!p§:Number = 720;
      
      public static const §%!e§:Number = 1.5;
       
      
      private var §5T§:Object;
      
      private var §7!<§:§4!N§ = null;
      
      public function §-!4§(param1:§;"0§, param2:Sprite, param3:String, param4:§3!Y§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         this.§5T§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function §8!h§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §!!5§ = false;
         § § = -1;
         this.§5T§.x = param1;
         this.§5T§.y = param2;
         this.§5T§.rotation = §>"#§;
         if(param5)
         {
            this.§7!<§ = §9!M§.§?!+§.§4!t§(§9!M§.§?!+§.§3!J§(§9!M§.§?!+§.§3d§(this.§5T§,{"y":param4 - §`§},{"y":param2},§%!e§ / 2,§0!M§.§,!w§),§9!M§.§?!+§.§3d§(this.§5T§,{"y":param4},{"y":param4 - §`§},§%!e§ / 2,§0!M§.include)),§9!M§.§?!+§.§3d§(this.§5T§,{
               "x":param3,
               "rotation":§>"#§ - §#!p§
            },null,§%!e§));
         }
         else
         {
            this.§7!<§ = §9!M§.§?!+§.§3d§(null,null,null,§%!e§);
         }
         this.§7!<§.onComplete = this.§#_§;
      }
      
      private function §#_§() : void
      {
         this.§7!<§ = null;
         §-!w§ = this.§5T§.rotation;
         §7",§ = §>"#§;
         setPosition(this.§5T§.x,this.§5T§.y);
         §!!5§ = false;
         § § = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§7!<§ != null)
         {
            if(this.§7!<§.isPaused)
            {
               this.§7!<§.play();
            }
            setPosition(this.§5T§.x,this.§5T§.y);
            §-!w§ = this.§5T§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§7!<§ && this.§7!<§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §0z§() : Boolean
      {
         if(this.§7!<§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§7!<§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§7!<§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
