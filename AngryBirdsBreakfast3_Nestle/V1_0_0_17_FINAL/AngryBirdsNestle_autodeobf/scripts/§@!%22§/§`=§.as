package §@!"§
{
   import §%8§.§@-§;
   import §3!J§.Sprite;
   import §;g§.§'c§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §@V§.§&#§;
   import §@V§.§0"§;
   
   public class §`=§ extends §&#§
   {
      
      private static const §5i§:Number = 20;
      
      private static const §;<§:Number = 720;
      
      public static const §3L§:Number = 1.5;
       
      
      private var §>i§:Object;
      
      private var §4`§:§]W§ = null;
      
      public function §`=§(param1:§0"§, param2:Sprite, param3:String, param4:§@-§, param5:Number, param6:Number, param7:Number = 0.0, param8:int = 0)
      {
         this.§>i§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §6s§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §;!d§ = false;
         §3I§ = -1;
         this.§>i§.x = param1;
         this.§>i§.y = param2;
         this.§>i§.rotation = §'!U§;
         if(param5)
         {
            this.§4`§ = §'c§.§,2§.§+!p§(§'c§.§,2§.§=!<§(§'c§.§,2§.§4!t§(this.§>i§,{"y":param4 - §5i§},{"y":param2},§3L§ / 2,§0!o§.§7!O§),§'c§.§,2§.§4!t§(this.§>i§,{"y":param4},{"y":param4 - §5i§},§3L§ / 2,§0!o§.§'!d§)),§'c§.§,2§.§4!t§(this.§>i§,{
               "x":param3,
               "rotation":§'!U§ - §;<§
            },null,§3L§));
         }
         else
         {
            this.§4`§ = §'c§.§,2§.§4!t§(null,null,null,§3L§);
         }
         this.§4`§.onComplete = this.§4n§;
      }
      
      private function §4n§() : void
      {
         this.§4`§ = null;
         §0!-§ = this.§>i§.rotation;
         §4!G§ = §'!U§;
         setPosition(this.§>i§.x,this.§>i§.y);
         §;!d§ = false;
         §3I§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§4`§ != null)
         {
            if(this.§4`§.isPaused)
            {
               this.§4`§.play();
            }
            setPosition(this.§>i§.x,this.§>i§.y);
            §0!-§ = this.§>i§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§4`§ && this.§4`§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §]S§() : Boolean
      {
         if(this.§4`§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§4`§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§4`§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
