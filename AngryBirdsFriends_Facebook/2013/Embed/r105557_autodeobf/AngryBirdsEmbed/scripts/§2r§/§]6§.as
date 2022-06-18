package §2r§
{
   import §;^§.Sprite;
   import §=!K§.§^Q§;
   
   public class §]6§
   {
      
      public static const §,J§:String = "setreferencesize";
      
      public static const §]&§:String = "createsprite";
      
      public static const §2F§:String = "scroll";
      
      public static const §+!"§:String = "zoom";
      
      public static const §]f§:String = "playsound";
      
      public static const §2&§:String = "fitwidth";
      
      public static const §3b§:String = "fitheight";
      
      public static const §<=§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var § in§:Number;
      
      private var §%w§:Number;
      
      public function §]6§(param1:Number, param2:Number)
      {
         super();
         this.§ in§ = param1;
         this.§%w§ = param2;
         if(isNaN(this.§%w§))
         {
            this.§%w§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§ in§;
      }
      
      public function get duration() : Number
      {
         return this.§%w§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§^Q§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §]6§
      {
         return new §]6§(this.time,this.duration);
      }
   }
}
