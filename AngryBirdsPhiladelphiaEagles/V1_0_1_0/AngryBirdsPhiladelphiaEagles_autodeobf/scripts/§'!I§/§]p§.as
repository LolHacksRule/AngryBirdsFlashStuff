package §'!I§
{
   import § !N§.§`v§;
   import §3H§.Sprite;
   
   public class §]p§
   {
      
      public static const §%!8§:String = "setreferencesize";
      
      public static const §"&§:String = "createsprite";
      
      public static const §[=§:String = "scroll";
      
      public static const §<e§:String = "zoom";
      
      public static const §1!M§:String = "playsound";
      
      public static const §!!F§:String = "fitwidth";
      
      public static const §!D§:String = "fitheight";
      
      public static const §!'§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §-f§:Number;
      
      private var §--§:Number;
      
      public function §]p§(param1:Number, param2:Number)
      {
         super();
         this.§-f§ = param1;
         this.§--§ = param2;
         if(isNaN(this.§--§))
         {
            this.§--§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§-f§;
      }
      
      public function get duration() : Number
      {
         return this.§--§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§`v§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §]p§
      {
         return new §]p§(this.time,this.duration);
      }
   }
}
