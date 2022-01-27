package §5"D§
{
   import §3R§.§,@§;
   import §3R§.§]"4§;
   import §4"@§.Sprite;
   import §6!M§.§9`§;
   import §9!U§.§15§;
   import §9!U§.§>C§;
   import §9!U§.§@F§;
   
   public class §9!s§ extends §]"4§
   {
      
      private static const §4!L§:Number = 20;
      
      private static const §9"B§:Number = 720;
      
      public static const §#!#§:Number = 1.5;
       
      
      private var §2@§:Object;
      
      private var §?"F§:§15§ = null;
      
      public function §9!s§(param1:§,@§, param2:Sprite, param3:String, param4:§9`§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         this.§2@§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function §1!D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §<!@§ = false;
         §<h§ = -1;
         this.§2@§.x = param1;
         this.§2@§.y = param2;
         this.§2@§.rotation = §'C§;
         if(param5)
         {
            this.§?"F§ = §>C§.§8!J§.§!W§(§>C§.§8!J§.§^"&§(§>C§.§8!J§.§&6§(this.§2@§,{"y":param4 - §4!L§},{"y":param2},§#!#§ / 2,§@F§.§%<§),§>C§.§8!J§.§&6§(this.§2@§,{"y":param4},{"y":param4 - §4!L§},§#!#§ / 2,§@F§.§<">§)),§>C§.§8!J§.§&6§(this.§2@§,{
               "x":param3,
               "rotation":§'C§ - §9"B§
            },null,§#!#§));
         }
         else
         {
            this.§?"F§ = §>C§.§8!J§.§&6§(null,null,null,§#!#§);
         }
         this.§?"F§.onComplete = this.§`"&§;
      }
      
      private function §`"&§() : void
      {
         this.§?"F§ = null;
         §4X§ = this.§2@§.rotation;
         §^E§ = §'C§;
         setPosition(this.§2@§.x,this.§2@§.y);
         §<!@§ = false;
         §<h§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§?"F§ != null)
         {
            if(this.§?"F§.isPaused)
            {
               this.§?"F§.play();
            }
            setPosition(this.§2@§.x,this.§2@§.y);
            §4X§ = this.§2@§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§?"F§ && this.§?"F§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §;"6§() : Boolean
      {
         if(this.§?"F§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§?"F§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§?"F§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
