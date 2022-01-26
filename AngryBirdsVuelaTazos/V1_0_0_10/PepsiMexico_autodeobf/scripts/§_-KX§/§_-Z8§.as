package §_-KX§
{
   import §_-se§.Sprite;
   
   public class §_-Z8§
   {
      
      public static const §_-ID§:String = "setreferencesize";
      
      public static const §_-vz§:String = "createsprite";
      
      public static const §_-Tm§:String = "scroll";
      
      public static const §_-pK§:String = "playsound";
      
      public static const §_-gH§:String = "fitwidth";
      
      public static const §_-wX§:String = "fitheight";
      
      public static const §_-nn§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-KJ§:Number;
      
      private var §_-j-§:Number;
      
      public function §_-Z8§(param1:Number, param2:Number)
      {
         super();
         this.§_-KJ§ = param1;
         this.§_-j-§ = param2;
         if(isNaN(this.§_-j-§))
         {
            this.§_-j-§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-KJ§;
      }
      
      public function get duration() : Number
      {
         return this.§_-j-§;
      }
      
      public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-Z8§
      {
         return new §_-Z8§(this.time,this.duration);
      }
   }
}
