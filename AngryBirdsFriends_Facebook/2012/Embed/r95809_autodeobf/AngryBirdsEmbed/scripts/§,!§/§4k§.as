package §,!§
{
   import §->§.Sprite;
   import §[!$§.§"!%§;
   
   public class §4k§
   {
      
      public static const §@Y§:String = "setreferencesize";
      
      public static const §#A§:String = "createsprite";
      
      public static const §0!3§:String = "scroll";
      
      public static const §&!§:String = "zoom";
      
      public static const §3!1§:String = "playsound";
      
      public static const §]_§:String = "fitwidth";
      
      public static const §]H§:String = "fitheight";
      
      public static const §>!5§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §&!9§:Number;
      
      private var §<X§:Number;
      
      public function §4k§(param1:Number, param2:Number)
      {
         super();
         this.§&!9§ = param1;
         this.§<X§ = param2;
         if(isNaN(this.§<X§))
         {
            this.§<X§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§&!9§;
      }
      
      public function get duration() : Number
      {
         return this.§<X§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§"!%§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §4k§
      {
         return new §4k§(this.time,this.duration);
      }
   }
}
