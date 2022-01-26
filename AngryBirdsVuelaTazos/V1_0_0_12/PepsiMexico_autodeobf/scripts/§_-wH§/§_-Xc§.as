package §_-wH§
{
   import §_-pF§.Sprite;
   
   public class §_-Xc§
   {
      
      public static const §_-HD§:String = "setreferencesize";
      
      public static const §_-kj§:String = "createsprite";
      
      public static const §_-rx§:String = "scroll";
      
      public static const §_-G0§:String = "playsound";
      
      public static const §_-Mf§:String = "fitwidth";
      
      public static const §_-BP§:String = "fitheight";
      
      public static const §_-Xb§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-lw§:Number;
      
      private var §_-4u§:Number;
      
      public function §_-Xc§(param1:Number, param2:Number)
      {
         super();
         this.§_-lw§ = param1;
         this.§_-4u§ = param2;
         if(isNaN(this.§_-4u§))
         {
            this.§_-4u§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-lw§;
      }
      
      public function get duration() : Number
      {
         return this.§_-4u§;
      }
      
      public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-Xc§
      {
         return new §_-Xc§(this.time,this.duration);
      }
   }
}
