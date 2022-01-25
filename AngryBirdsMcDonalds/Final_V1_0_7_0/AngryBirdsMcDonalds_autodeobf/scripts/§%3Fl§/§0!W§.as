package §?l§
{
   import §0@§.Sprite;
   import §7! §.§4n§;
   
   public class §0!W§
   {
      
      public static const §2C§:String = "setreferencesize";
      
      public static const §#!R§:String = "createsprite";
      
      public static const §%p§:String = "scroll";
      
      public static const §1!D§:String = "zoom";
      
      public static const §&!d§:String = "playsound";
      
      public static const §?I§:String = "fitwidth";
      
      public static const § R§:String = "fitheight";
      
      public static const § !7§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §&! §:Number;
      
      private var §6!0§:Number;
      
      public function §0!W§(param1:Number, param2:Number)
      {
         super();
         this.§&! § = param1;
         this.§6!0§ = param2;
         if(isNaN(this.§6!0§))
         {
            this.§6!0§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§&! §;
      }
      
      public function get duration() : Number
      {
         return this.§6!0§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§4n§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §0!W§
      {
         return new §0!W§(this.time,this.duration);
      }
   }
}
