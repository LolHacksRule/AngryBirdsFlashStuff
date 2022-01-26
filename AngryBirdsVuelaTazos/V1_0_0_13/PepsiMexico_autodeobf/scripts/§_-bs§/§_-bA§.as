package §_-bs§
{
   import §_-UX§.Sprite;
   
   public class §_-bA§
   {
      
      public static const §_-Vq§:String = "setreferencesize";
      
      public static const §_-Sh§:String = "createsprite";
      
      public static const §_-iz§:String = "scroll";
      
      public static const §_-4P§:String = "playsound";
      
      public static const §_-FU§:String = "fitwidth";
      
      public static const §_-q0§:String = "fitheight";
      
      public static const §_-Jo§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-2y§:Number;
      
      private var §_-2Z§:Number;
      
      public function §_-bA§(param1:Number, param2:Number)
      {
         super();
         this.§_-2y§ = param1;
         this.§_-2Z§ = param2;
         if(isNaN(this.§_-2Z§))
         {
            this.§_-2Z§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-2y§;
      }
      
      public function get duration() : Number
      {
         return this.§_-2Z§;
      }
      
      public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-bA§
      {
         return new §_-bA§(this.time,this.duration);
      }
   }
}
