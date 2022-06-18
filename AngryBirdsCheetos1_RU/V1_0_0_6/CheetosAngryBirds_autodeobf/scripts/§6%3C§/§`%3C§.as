package §6<§
{
   import §!7§.§!>§;
   import §!7§.§`R§;
   import §1!§.§@!Q§;
   import §8!`§.§%t§;
   import §8!`§.§3!Q§;
   import §;!Q§.Sprite;
   
   public class §`<§ extends §3!Q§
   {
      
      private static const §'@§:Number = 3;
      
      public static const §5!V§:Number = 0.75;
       
      
      private var §<!F§:§!>§ = null;
      
      private var §;!G§:Object;
      
      public function §`<§(param1:§%t§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§;!G§ = new Object();
         super(param1,param2,param3,param4,param5);
      }
      
      public function §5!@§(param1:Number, param2:Number, param3:Boolean = true) : §!>§
      {
         §@?§ = false;
         §'%§ = -1;
         this.§;!G§.x = §"9§;
         this.§;!G§.y = §[g§;
         this.§;!G§.rotation = §-w§;
         if(param3)
         {
            this.§<!F§ = §`R§.§!!8§.§?!3§(§`R§.§!!8§.§ B§(this.§;!G§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§;!G§.x,
               "rotation":0
            },§5!V§),§`R§.§!!8§.§!!'§(§`R§.§!!8§.§ B§(this.§;!G§,{"y":this.§;!G§.y - §'@§},{"y":this.§;!G§.y},§5!V§ / 2,§`R§.§+h§),§`R§.§!!8§.§ B§(this.§;!G§,{"y":param2},{"y":this.§;!G§.y - §'@§},§5!V§ / 2,§`R§.§4!R§)));
         }
         else
         {
            this.§<!F§ = §`R§.§!!8§.§ B§(null,null,null,§`<§.§5!V§);
         }
         this.§<!F§.§^E§ = false;
         this.§<!F§.play();
         this.§<!F§.onComplete = this.§0!D§;
         return this.§<!F§;
      }
      
      private function §0!D§() : void
      {
         this.§<!F§ = null;
         §-w§ = this.§;!G§.rotation;
         setPosition(this.§;!G§.x,this.§;!G§.y);
         §@?§ = false;
         §'%§ = -1;
         (§@!Q§.§7l§ as §9H§).slingshot.setSlingShotState(§%t§.§-X§);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§<!F§ != null)
         {
            if(§@!Q§.isPaused)
            {
               this.§<!F§.§?!]§();
            }
            else
            {
               this.§<!F§.play();
            }
            §-w§ = this.§;!G§.rotation;
            setPosition(this.§;!G§.x,this.§;!G§.y);
            §;!+§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§<!F§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§<!F§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
