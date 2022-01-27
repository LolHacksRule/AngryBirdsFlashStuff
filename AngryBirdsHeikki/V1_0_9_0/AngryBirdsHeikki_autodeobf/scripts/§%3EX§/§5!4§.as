package §>X§
{
   import §#!f§.Sprite;
   import §3!§.§-e§;
   
   public class §5!4§
   {
      
      public static const §-5§:String = "setreferencesize";
      
      public static const §5!]§:String = "createsprite";
      
      public static const §2A§:String = "scroll";
      
      public static const §9J§:String = "zoom";
      
      public static const §'U§:String = "playsound";
      
      public static const §[!M§:String = "fitwidth";
      
      public static const §=C§:String = "fitheight";
      
      public static const §`v§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §"x§:Number;
      
      private var §4r§:Number;
      
      public function §5!4§(param1:Number, param2:Number)
      {
         super();
         this.§"x§ = param1;
         this.§4r§ = param2;
         if(isNaN(this.§4r§))
         {
            this.§4r§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§"x§;
      }
      
      public function get duration() : Number
      {
         return this.§4r§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§-e§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §5!4§
      {
         return new §5!4§(this.time,this.duration);
      }
   }
}
