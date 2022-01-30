package §,%§
{
   import §@!-§.§3"1§;
   import §@!i§.Sprite;
   
   public class §"!2§
   {
      
      public static const §!!x§:String = "setreferencesize";
      
      public static const §;!+§:String = "createsprite";
      
      public static const §#!b§:String = "scroll";
      
      public static const §8O§:String = "zoom";
      
      public static const §[!h§:String = "playsound";
      
      public static const §?!W§:String = "fitwidth";
      
      public static const §8"5§:String = "fitheight";
      
      public static const §^"4§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §&!w§:Number;
      
      private var § c§:Number;
      
      public function §"!2§(param1:Number, param2:Number)
      {
         super();
         this.§&!w§ = param1;
         this.§ c§ = param2;
         if(isNaN(this.§ c§))
         {
            this.§ c§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§&!w§;
      }
      
      public function get duration() : Number
      {
         return this.§ c§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§3"1§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §"!2§
      {
         return new §"!2§(this.time,this.duration);
      }
   }
}
