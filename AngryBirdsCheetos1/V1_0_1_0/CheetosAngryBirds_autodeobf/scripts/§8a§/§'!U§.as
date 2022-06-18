package §8a§
{
   import §4W§.§!]§;
   import §`a§.Sprite;
   
   public class §'!U§
   {
      
      public static const §^r§:String = "setreferencesize";
      
      public static const §=!=§:String = "createsprite";
      
      public static const §;t§:String = "scroll";
      
      public static const §7;§:String = "zoom";
      
      public static const §^-§:String = "playsound";
      
      public static const §+M§:String = "fitwidth";
      
      public static const §5H§:String = "fitheight";
      
      public static const §`J§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §"!#§:Number;
      
      private var §2-§:Number;
      
      public function §'!U§(param1:Number, param2:Number)
      {
         super();
         this.§"!#§ = param1;
         this.§2-§ = param2;
         if(isNaN(this.§2-§))
         {
            this.§2-§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§"!#§;
      }
      
      public function get duration() : Number
      {
         return this.§2-§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §'!U§
      {
         return new §'!U§(this.time,this.duration);
      }
   }
}
