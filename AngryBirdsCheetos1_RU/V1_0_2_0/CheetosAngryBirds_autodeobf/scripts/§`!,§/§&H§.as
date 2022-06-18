package §`!,§
{
   import §,H§.Sprite;
   import §2!4§.§5T§;
   
   public class §&H§
   {
      
      public static const §`!H§:String = "setreferencesize";
      
      public static const §5!D§:String = "createsprite";
      
      public static const §"n§:String = "scroll";
      
      public static const §0j§:String = "zoom";
      
      public static const §-v§:String = "playsound";
      
      public static const §?!I§:String = "fitwidth";
      
      public static const §9!C§:String = "fitheight";
      
      public static const §5u§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §7!,§:Number;
      
      private var §4Z§:Number;
      
      public function §&H§(param1:Number, param2:Number)
      {
         super();
         this.§7!,§ = param1;
         this.§4Z§ = param2;
         if(isNaN(this.§4Z§))
         {
            this.§4Z§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§7!,§;
      }
      
      public function get duration() : Number
      {
         return this.§4Z§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§5T§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §&H§
      {
         return new §&H§(this.time,this.duration);
      }
   }
}
