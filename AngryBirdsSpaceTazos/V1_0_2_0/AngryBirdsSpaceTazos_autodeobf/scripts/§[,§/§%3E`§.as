package §[,§
{
   import §'!&§.Sprite;
   import §;"=§.§[e§;
   import §<§.§0B§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §?!<§.§&V§;
   import §?!<§.§0O§;
   
   public class §>`§ extends §0O§
   {
      
      private static const §?!V§:Number = 20;
      
      private static const §72§:Number = 720;
      
      public static const §,"C§:Number = 1.5;
       
      
      private var §6M§:Object;
      
      private var §%"&§:§8"+§ = null;
      
      public function §>`§(param1:§&V§, param2:Sprite, param3:String, param4:§[e§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         this.§6M§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function §?!w§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         § !8§ = false;
         §6p§ = -1;
         this.§6M§.x = param1;
         this.§6M§.y = param2;
         this.§6M§.rotation = §^!Z§;
         if(param5)
         {
            this.§%"&§ = §0B§.§<"B§.§]"B§(§0B§.§<"B§.§-!E§(§0B§.§<"B§.§`!c§(this.§6M§,{"y":param4 - §?!V§},{"y":param2},§,"C§ / 2,§<K§.§""@§),§0B§.§<"B§.§`!c§(this.§6M§,{"y":param4},{"y":param4 - §?!V§},§,"C§ / 2,§<K§.§?b§)),§0B§.§<"B§.§`!c§(this.§6M§,{
               "x":param3,
               "rotation":§^!Z§ - §72§
            },null,§,"C§));
         }
         else
         {
            this.§%"&§ = §0B§.§<"B§.§`!c§(null,null,null,§,"C§);
         }
         this.§%"&§.onComplete = this.§2!d§;
      }
      
      private function §2!d§() : void
      {
         this.§%"&§ = null;
         §^8§ = this.§6M§.rotation;
         §@!<§ = §^!Z§;
         setPosition(this.§6M§.x,this.§6M§.y);
         § !8§ = false;
         §6p§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§%"&§ != null)
         {
            if(this.§%"&§.isPaused)
            {
               this.§%"&§.play();
            }
            setPosition(this.§6M§.x,this.§6M§.y);
            §^8§ = this.§6M§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§%"&§ && this.§%"&§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §3!#§() : Boolean
      {
         if(this.§%"&§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§%"&§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§%"&§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
