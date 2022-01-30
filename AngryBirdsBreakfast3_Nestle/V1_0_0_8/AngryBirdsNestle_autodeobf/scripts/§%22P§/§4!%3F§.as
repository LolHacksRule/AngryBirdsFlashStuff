package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §53§.§^M§;
   import §9G§.§1!a§;
   import §9G§.§9!G§;
   
   public class §4!?§ extends §1!a§
   {
      
      private static const §#" §:Number = 20;
      
      private static const §4![§:Number = 720;
      
      public static const §[!u§:Number = 1.5;
       
      
      private var §4!I§:Object;
      
      private var §#!H§:§["$§ = null;
      
      public function §4!?§(param1:§9!G§, param2:Sprite, param3:String, param4:§!o§, param5:Number, param6:Number, param7:Number = 0.0, param8:int = 0)
      {
         this.§4!I§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §=!?§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §-!$§ = false;
         §<5§ = -1;
         this.§4!I§.x = param1;
         this.§4!I§.y = param2;
         this.§4!I§.rotation = §#a§;
         if(param5)
         {
            this.§#!H§ = §^M§.§"e§.§4M§(§^M§.§"e§.§8!Y§(§^M§.§"e§.§0!O§(this.§4!I§,{"y":param4 - §#" §},{"y":param2},§[!u§ / 2,§6!u§.§-!P§),§^M§.§"e§.§0!O§(this.§4!I§,{"y":param4},{"y":param4 - §#" §},§[!u§ / 2,§6!u§.§?!o§)),§^M§.§"e§.§0!O§(this.§4!I§,{
               "x":param3,
               "rotation":§#a§ - §4![§
            },null,§[!u§));
         }
         else
         {
            this.§#!H§ = §^M§.§"e§.§0!O§(null,null,null,§[!u§);
         }
         this.§#!H§.onComplete = this.§5!C§;
      }
      
      private function §5!C§() : void
      {
         this.§#!H§ = null;
         §4D§ = this.§4!I§.rotation;
         §1!c§ = §#a§;
         setPosition(this.§4!I§.x,this.§4!I§.y);
         §-!$§ = false;
         §<5§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§#!H§ != null)
         {
            if(this.§#!H§.isPaused)
            {
               this.§#!H§.play();
            }
            setPosition(this.§4!I§.x,this.§4!I§.y);
            §4D§ = this.§4!I§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§#!H§ && this.§#!H§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §=!^§() : Boolean
      {
         if(this.§#!H§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§#!H§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§#!H§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
