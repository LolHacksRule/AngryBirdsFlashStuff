package §4u§
{
   import §,!_§.TextureManager;
   import §6!7§.Sprite;
   
   public class §^!I§
   {
      
      public static const §const§:String = "setreferencesize";
      
      public static const § W§:String = "createsprite";
      
      public static const §[!h§:String = "scroll";
      
      public static const §-X§:String = "zoom";
      
      public static const §;e§:String = "playsound";
      
      public static const §2!C§:String = "fitwidth";
      
      public static const §^S§:String = "fitheight";
      
      public static const §"V§:String = "set_bg_colour";
      
      public static const §-2§:String = "end";
       
      
      private var §2+§:Number;
      
      private var §-! §:Number;
      
      public function §^!I§(param1:Number, param2:Number)
      {
         super();
         this.§2+§ = param1;
         this.§-! § = param2;
         if(isNaN(this.§-! §))
         {
            this.§-! § = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§2+§;
      }
      
      public function get duration() : Number
      {
         return this.§-! §;
      }
      
      public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §^!I§
      {
         return new §^!I§(this.time,this.duration);
      }
   }
}
