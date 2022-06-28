package §8!>§
{
   import §'k§.§ >§;
   import §9W§.Sprite;
   
   public class §1^§
   {
      
      public static const §2=§:String = "setreferencesize";
      
      public static const §!1§:String = "createsprite";
      
      public static const §?I§:String = "scroll";
      
      public static const §;u§:String = "zoom";
      
      public static const §]!D§:String = "playsound";
      
      public static const §'e§:String = "fitwidth";
      
      public static const §@!;§:String = "fitheight";
      
      public static const §6!E§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §3j§:Number;
      
      private var §>!F§:Number;
      
      public function §1^§(param1:Number, param2:Number)
      {
         super();
         this.§3j§ = param1;
         this.§>!F§ = param2;
         if(isNaN(this.§>!F§))
         {
            this.§>!F§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§3j§;
      }
      
      public function get duration() : Number
      {
         return this.§>!F§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§ >§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §1^§
      {
         return new §1^§(this.time,this.duration);
      }
   }
}
