package §9A§
{
   import §%t§.§-!5§;
   import §^I§.Sprite;
   
   public class §'"$§
   {
      
      public static const § !s§:String = "setreferencesize";
      
      public static const §"!P§:String = "createsprite";
      
      public static const §^!A§:String = "scroll";
      
      public static const §`W§:String = "zoom";
      
      public static const §66§:String = "playsound";
      
      public static const §0!-§:String = "fitwidth";
      
      public static const §[_§:String = "fitheight";
      
      public static const §#&§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §;k§:Number;
      
      private var §9j§:Number;
      
      public function §'"$§(param1:Number, param2:Number)
      {
         super();
         this.§;k§ = param1;
         this.§9j§ = param2;
         if(isNaN(this.§9j§))
         {
            this.§9j§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§;k§;
      }
      
      public function get duration() : Number
      {
         return this.§9j§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§-!5§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §'"$§
      {
         return new §'"$§(this.time,this.duration);
      }
   }
}
