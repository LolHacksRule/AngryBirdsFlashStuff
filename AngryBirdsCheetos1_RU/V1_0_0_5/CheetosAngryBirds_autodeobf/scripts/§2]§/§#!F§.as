package §2]§
{
   import §@!§.§?! §;
   import §null §.Sprite;
   
   public class §#!F§
   {
      
      public static const § v§:String = "setreferencesize";
      
      public static const §"^§:String = "createsprite";
      
      public static const §5!>§:String = "scroll";
      
      public static const §^x§:String = "zoom";
      
      public static const §,!]§:String = "playsound";
      
      public static const §^!&§:String = "fitwidth";
      
      public static const §;?§:String = "fitheight";
      
      public static const § C§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var § H§:Number;
      
      private var §<![§:Number;
      
      public function §#!F§(param1:Number, param2:Number)
      {
         super();
         this.§ H§ = param1;
         this.§<![§ = param2;
         if(isNaN(this.§<![§))
         {
            this.§<![§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§ H§;
      }
      
      public function get duration() : Number
      {
         return this.§<![§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§?! §) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §#!F§
      {
         return new §#!F§(this.time,this.duration);
      }
   }
}
