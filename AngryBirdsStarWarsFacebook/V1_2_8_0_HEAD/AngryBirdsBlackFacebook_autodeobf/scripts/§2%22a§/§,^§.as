package §2"a§
{
   import §!!U§.Sprite;
   import §7!F§.§7§;
   
   public class §,^§
   {
      
      public static const §6"X§:String = "setreferencesize";
      
      public static const §7!d§:String = "createsprite";
      
      public static const § if§:String = "scroll";
      
      public static const §6!C§:String = "zoom";
      
      public static const §""%§:String = "playsound";
      
      public static const §<"V§:String = "fitwidth";
      
      public static const §4#K§:String = "fitheight";
      
      public static const §3#N§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §#T§:Number;
      
      private var §1!]§:Number;
      
      public function §,^§(param1:Number, param2:Number)
      {
         super();
         this.§#T§ = param1;
         this.§1!]§ = param2;
         if(isNaN(this.§1!]§))
         {
            this.§1!]§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§#T§;
      }
      
      public function get duration() : Number
      {
         return this.§1!]§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,^§
      {
         return new §,^§(this.time,this.duration);
      }
   }
}
