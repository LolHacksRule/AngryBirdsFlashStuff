package §=!7§
{
   import § `§.§2w§;
   import §]@§.Sprite;
   
   public class §%f§
   {
      
      public static const §]=§:String = "setreferencesize";
      
      public static const §,H§:String = "createsprite";
      
      public static const §2k§:String = "scroll";
      
      public static const §7g§:String = "zoom";
      
      public static const §`F§:String = "playsound";
      
      public static const §<!B§:String = "fitwidth";
      
      public static const §]!!§:String = "fitheight";
      
      public static const §7!8§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §3-§:Number;
      
      private var §1s§:Number;
      
      public function §%f§(param1:Number, param2:Number)
      {
         super();
         this.§3-§ = param1;
         this.§1s§ = param2;
         if(isNaN(this.§1s§))
         {
            this.§1s§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§3-§;
      }
      
      public function get duration() : Number
      {
         return this.§1s§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §%f§
      {
         return new §%f§(this.time,this.duration);
      }
   }
}
