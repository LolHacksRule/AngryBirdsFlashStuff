package §9"!§
{
   import §1!$§.Sprite;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   
   public class §`7§ extends §;!M§
   {
      
      private static const §&!=§:Number = 10;
      
      public static const §-U§:Number = 1;
       
      
      private var §9!'§:§"m§ = null;
      
      private var §0b§:Object;
      
      public function §`7§(param1:§2a§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§0b§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §4!]§(param1:Number, param2:Number, param3:Boolean = true) : §"m§
      {
         §]!b§ = false;
         §'V§ = -1;
         this.§0b§.x = §,!k§;
         this.§0b§.y = §!Q§;
         this.§0b§.rotation = §@P§;
         if(param3)
         {
            this.§9!'§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(this.§0b§,{
               "x":param1,
               "rotation":-360
            },null,§-U§),§>!+§.§;"§.§%!p§(§>!+§.§;"§.§^!K§(this.§0b§,{"y":this.§0b§.y - §&!=§},null,§-U§ / 2,§>!+§.§;U§),§>!+§.§;"§.§^!K§(this.§0b§,{"y":param2},{"y":this.§0b§.y - §&!=§},§-U§ / 2,§>!+§.§19§)));
         }
         else
         {
            this.§9!'§ = §>!+§.§;"§.§^!K§(null,null,null,§`7§.§-U§);
         }
         this.§9!'§.play();
         this.§9!'§.onComplete = this.§3!i§;
         return this.§9!'§;
      }
      
      private function §3!i§() : void
      {
         this.§9!'§ = null;
         §@P§ = this.§0b§.rotation;
         setPosition(this.§0b§.x,this.§0b§.y);
         §]!b§ = false;
         §'V§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§9!'§ != null)
         {
            §@P§ = this.§0b§.rotation;
            setPosition(this.§0b§.x,this.§0b§.y);
            §,!7§();
            this.§9!'§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§9!'§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§9!'§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
