package §%!>§
{
   import §<!N§.Sprite;
   import §^'§.§ !C§;
   
   public class §7!<§
   {
      
      public static const §>!F§:String = "setreferencesize";
      
      public static const §&C§:String = "createsprite";
      
      public static const §5b§:String = "scroll";
      
      public static const §!!I§:String = "zoom";
      
      public static const §@@§:String = "playsound";
      
      public static const §>!I§:String = "fitwidth";
      
      public static const §;p§:String = "fitheight";
      
      public static const §`8§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §'z§:Number;
      
      private var §]q§:Number;
      
      public function §7!<§(param1:Number, param2:Number)
      {
         super();
         this.§'z§ = param1;
         this.§]q§ = param2;
         if(isNaN(this.§]q§))
         {
            this.§]q§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§'z§;
      }
      
      public function get duration() : Number
      {
         return this.§]q§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§ !C§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §7!<§
      {
         return new §7!<§(this.time,this.duration);
      }
   }
}
