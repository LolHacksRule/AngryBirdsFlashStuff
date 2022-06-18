package §,!M§
{
   import §#!@§.Sprite;
   import §[v§.§0&§;
   
   public class §;!0§
   {
      
      public static const § e§:String = "setreferencesize";
      
      public static const §&_§:String = "createsprite";
      
      public static const §9W§:String = "scroll";
      
      public static const §]w§:String = "zoom";
      
      public static const §9!?§:String = "playsound";
      
      public static const §&!K§:String = "fitwidth";
      
      public static const §61§:String = "fitheight";
      
      public static const §#!9§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §%A§:Number;
      
      private var §%§:Number;
      
      public function §;!0§(param1:Number, param2:Number)
      {
         super();
         this.§%A§ = param1;
         this.§%§ = param2;
         if(isNaN(this.§%§))
         {
            this.§%§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§%A§;
      }
      
      public function get duration() : Number
      {
         return this.§%§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§0&§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §;!0§
      {
         return new §;!0§(this.time,this.duration);
      }
   }
}
