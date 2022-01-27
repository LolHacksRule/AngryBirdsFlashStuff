package §#R§
{
   import §4!0§.§3§;
   import §86§.Sprite;
   
   public class §@i§
   {
      
      public static const §^O§:String = "setreferencesize";
      
      public static const §##§:String = "createsprite";
      
      public static const §]c§:String = "scroll";
      
      public static const §[]§:String = "zoom";
      
      public static const §,! §:String = "playsound";
      
      public static const §;D§:String = "fitwidth";
      
      public static const §'-§:String = "fitheight";
      
      public static const §#T§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §%i§:Number;
      
      private var § !4§:Number;
      
      public function §@i§(param1:Number, param2:Number)
      {
         super();
         this.§%i§ = param1;
         this.§ !4§ = param2;
         if(isNaN(this.§ !4§))
         {
            this.§ !4§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§%i§;
      }
      
      public function get duration() : Number
      {
         return this.§ !4§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§3§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §@i§
      {
         return new §@i§(this.time,this.duration);
      }
   }
}
