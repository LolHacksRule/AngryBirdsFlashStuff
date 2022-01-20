package §8%§
{
   import §9`§.§#U§;
   import §`!n§.Sprite;
   
   public class §]p§
   {
      
      public static const §54§:String = "setreferencesize";
      
      public static const §%!;§:String = "createsprite";
      
      public static const §"N§:String = "scroll";
      
      public static const §>a§:String = "zoom";
      
      public static const §@!W§:String = "playsound";
      
      public static const §0!U§:String = "fitwidth";
      
      public static const §6V§:String = "fitheight";
      
      public static const §7o§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §@!M§:Number;
      
      private var §'!S§:Number;
      
      public function §]p§(param1:Number, param2:Number)
      {
         super();
         this.§@!M§ = param1;
         this.§'!S§ = param2;
         if(isNaN(this.§'!S§))
         {
            this.§'!S§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§@!M§;
      }
      
      public function get duration() : Number
      {
         return this.§'!S§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§#U§) : Boolean
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
