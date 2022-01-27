package §>[§
{
   import §=!E§.Sprite;
   import §]!C§.§0!d§;
   
   public class §%!U§
   {
      
      public static const §[!,§:String = "setreferencesize";
      
      public static const §`![§:String = "createsprite";
      
      public static const §#B§:String = "scroll";
      
      public static const §>&§:String = "zoom";
      
      public static const §]-§:String = "playsound";
      
      public static const §0c§:String = "fitwidth";
      
      public static const §^q§:String = "fitheight";
      
      public static const §'F§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §[E§:Number;
      
      private var §=!%§:Number;
      
      public function §%!U§(param1:Number, param2:Number)
      {
         super();
         this.§[E§ = param1;
         this.§=!%§ = param2;
         if(isNaN(this.§=!%§))
         {
            this.§=!%§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§[E§;
      }
      
      public function get duration() : Number
      {
         return this.§=!%§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§0!d§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §%!U§
      {
         return new §%!U§(this.time,this.duration);
      }
   }
}
