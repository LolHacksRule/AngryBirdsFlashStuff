package §_-qU§
{
   import §_-GY§.Sprite;
   import §_-my§.§_-V0§;
   
   public class §_-BV§
   {
      
      public static const §_-qm§:String = "setreferencesize";
      
      public static const §_-xT§:String = "createsprite";
      
      public static const §_-j3§:String = "scroll";
      
      public static const §_-qW§:String = "zoom";
      
      public static const §_-dp§:String = "playsound";
      
      public static const §_-K6§:String = "fitwidth";
      
      public static const §_-OM§:String = "fitheight";
      
      public static const §_-nC§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-RE§:Number;
      
      private var §_-RJ§:Number;
      
      public function §_-BV§(param1:Number, param2:Number)
      {
         super();
         this.§_-RE§ = param1;
         this.§_-RJ§ = param2;
         if(isNaN(this.§_-RJ§))
         {
            this.§_-RJ§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-RE§;
      }
      
      public function get duration() : Number
      {
         return this.§_-RJ§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§_-V0§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-BV§
      {
         return new §_-BV§(this.time,this.duration);
      }
   }
}
