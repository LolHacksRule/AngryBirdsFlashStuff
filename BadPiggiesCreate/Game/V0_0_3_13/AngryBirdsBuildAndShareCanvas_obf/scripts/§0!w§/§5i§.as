package §0!w§
{
   import §`"2§.§6!,§;
   import §`L§.Sprite;
   
   public class §5i§
   {
      
      public static const §#!<§:String = "setreferencesize";
      
      public static const §-7§:String = "createsprite";
      
      public static const §8]§:String = "scroll";
      
      public static const §2!j§:String = "zoom";
      
      public static const §?!6§:String = "playsound";
      
      public static const § 0§:String = "fitwidth";
      
      public static const §5!_§:String = "fitheight";
      
      public static const §""&§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §[!#§:Number;
      
      private var §,U§:Number;
      
      public function §5i§(param1:Number, param2:Number)
      {
         super();
         this.§[!#§ = param1;
         this.§,U§ = param2;
         if(isNaN(this.§,U§))
         {
            this.§,U§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§[!#§;
      }
      
      public function get duration() : Number
      {
         return this.§,U§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§6!,§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §5i§
      {
         return new §5i§(this.time,this.duration);
      }
   }
}
