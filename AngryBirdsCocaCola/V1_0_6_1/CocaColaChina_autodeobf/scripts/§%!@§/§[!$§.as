package §%!@§
{
   import §+N§.§``§;
   import §<!$§.Sprite;
   
   public class §[!$§
   {
      
      public static const §>2§:String = "setreferencesize";
      
      public static const §^!I§:String = "createsprite";
      
      public static const §&$§:String = "scroll";
      
      public static const §>y§:String = "zoom";
      
      public static const §9I§:String = "playsound";
      
      public static const §<9§:String = "fitwidth";
      
      public static const §7<§:String = "fitheight";
      
      public static const §3S§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §&!a§:Number;
      
      private var §4!+§:Number;
      
      public function §[!$§(param1:Number, param2:Number)
      {
         super();
         this.§&!a§ = param1;
         this.§4!+§ = param2;
         if(isNaN(this.§4!+§))
         {
            this.§4!+§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§&!a§;
      }
      
      public function get duration() : Number
      {
         return this.§4!+§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§``§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §[!$§
      {
         return new §[!$§(this.time,this.duration);
      }
   }
}
