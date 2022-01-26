package §6p§
{
   import §,!Q§.Sprite;
   import §2l§.§]O§;
   
   public class §6!Y§
   {
      
      public static const §'0§:String = "setreferencesize";
      
      public static const §-d§:String = "createsprite";
      
      public static const §<4§:String = "scroll";
      
      public static const §1!=§:String = "zoom";
      
      public static const §-m§:String = "playsound";
      
      public static const §?!9§:String = "fitwidth";
      
      public static const §?!A§:String = "fitheight";
      
      public static const §!%§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §7!G§:Number;
      
      private var §[H§:Number;
      
      public function §6!Y§(param1:Number, param2:Number)
      {
         super();
         this.§7!G§ = param1;
         this.§[H§ = param2;
         if(isNaN(this.§[H§))
         {
            this.§[H§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§7!G§;
      }
      
      public function get duration() : Number
      {
         return this.§[H§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§]O§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §6!Y§
      {
         return new §6!Y§(this.time,this.duration);
      }
   }
}
