package §,z§
{
   import §&v§.§9B§;
   import §6![§.Sprite;
   import §?@§.§ !y§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import §@L§.§3!&§;
   import §@L§.§;!3§;
   
   public class §-!m§ extends §3!&§
   {
      
      private static const §&&§:Number = 20;
      
      private static const §=!d§:Number = 720;
      
      public static const §@!%§:Number = 1.5;
       
      
      private var §<b§:Object;
      
      private var §]!E§:§0]§ = null;
      
      public function §-!m§(param1:§;!3§, param2:Sprite, param3:String, param4:§9B§, param5:Number, param6:Number, param7:Number = 0.0, param8:int = 0)
      {
         this.§<b§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §>"#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         §12§ = false;
         §'C§ = -1;
         this.§<b§.x = param1;
         this.§<b§.y = param2;
         this.§<b§.rotation = §?!G§;
         if(param5)
         {
            this.§]!E§ = § !y§.§2Z§.§7!%§(§ !y§.§2Z§.§5;§(§ !y§.§2Z§.§!!f§(this.§<b§,{"y":param4 - §&&§},{"y":param2},§@!%§ / 2,§'^§.§=!q§),§ !y§.§2Z§.§!!f§(this.§<b§,{"y":param4},{"y":param4 - §&&§},§@!%§ / 2,§'^§.§>!$§)),§ !y§.§2Z§.§!!f§(this.§<b§,{
               "x":param3,
               "rotation":§?!G§ - §=!d§
            },null,§@!%§));
         }
         else
         {
            this.§]!E§ = § !y§.§2Z§.§!!f§(null,null,null,§@!%§);
         }
         this.§]!E§.onComplete = this.§9!r§;
      }
      
      private function §9!r§() : void
      {
         this.§]!E§ = null;
         §!&§ = this.§<b§.rotation;
         §^!-§ = §?!G§;
         setPosition(this.§<b§.x,this.§<b§.y);
         §12§ = false;
         §'C§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§]!E§ != null)
         {
            if(this.§]!E§.isPaused)
            {
               this.§]!E§.play();
            }
            setPosition(this.§<b§.x,this.§<b§.y);
            §!&§ = this.§<b§.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.§]!E§ && this.§]!E§.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function §"!X§() : Boolean
      {
         if(this.§]!E§)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§]!E§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§]!E§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
