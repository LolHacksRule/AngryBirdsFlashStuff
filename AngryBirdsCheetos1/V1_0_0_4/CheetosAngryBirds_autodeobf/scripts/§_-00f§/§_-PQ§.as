package §_-00f§
{
   import §_-4I§.§_-v8§;
   import §case §.Sprite;
   
   public class §_-PQ§
   {
      
      public static const §_-lJ§:String = "setreferencesize";
      
      public static const §_-Q7§:String = "createsprite";
      
      public static const §_-Yy§:String = "scroll";
      
      public static const § get§:String = "zoom";
      
      public static const §_-tp§:String = "playsound";
      
      public static const §_-8T§:String = "fitwidth";
      
      public static const §_-Rl§:String = "fitheight";
      
      public static const §_-dH§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-zI§:Number;
      
      private var §_-1z§:Number;
      
      public function §_-PQ§(param1:Number, param2:Number)
      {
         super();
         this.§_-zI§ = param1;
         this.§_-1z§ = param2;
         if(isNaN(this.§_-1z§))
         {
            this.§_-1z§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-zI§;
      }
      
      public function get duration() : Number
      {
         return this.§_-1z§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§_-v8§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-PQ§
      {
         return new §_-PQ§(this.time,this.duration);
      }
   }
}
