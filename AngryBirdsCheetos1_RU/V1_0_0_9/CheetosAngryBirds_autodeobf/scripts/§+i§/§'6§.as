package §+i§
{
   import §7u§.Sprite;
   import §`!B§.§=m§;
   
   public class §'6§
   {
      
      public static const §7l§:String = "setreferencesize";
      
      public static const §3=§:String = "createsprite";
      
      public static const §5x§:String = "scroll";
      
      public static const §,3§:String = "zoom";
      
      public static const §?`§:String = "playsound";
      
      public static const §1!S§:String = "fitwidth";
      
      public static const §?T§:String = "fitheight";
      
      public static const §@!F§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §5+§:Number;
      
      private var §<r§:Number;
      
      public function §'6§(param1:Number, param2:Number)
      {
         super();
         this.§5+§ = param1;
         this.§<r§ = param2;
         if(isNaN(this.§<r§))
         {
            this.§<r§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§5+§;
      }
      
      public function get duration() : Number
      {
         return this.§<r§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§=m§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §'6§
      {
         return new §'6§(this.time,this.duration);
      }
   }
}
