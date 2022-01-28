package §_-wG§
{
   import §_-3b§.§_-Og§;
   import §_-SE§.Sprite;
   
   public class include
   {
      
      public static const §_-nH§:String = "setreferencesize";
      
      public static const §_-OB§:String = "createsprite";
      
      public static const §_-xz§:String = "scroll";
      
      public static const §_-gz§:String = "zoom";
      
      public static const §_-0K§:String = "playsound";
      
      public static const §_-ii§:String = "fitwidth";
      
      public static const §_-Wc§:String = "fitheight";
      
      public static const §_-wZ§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-OY§:Number;
      
      private var §_-Z1§:Number;
      
      public function include(param1:Number, param2:Number)
      {
         super();
         this.§_-OY§ = param1;
         this.§_-Z1§ = param2;
         if(isNaN(this.§_-Z1§))
         {
            this.§_-Z1§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-OY§;
      }
      
      public function get duration() : Number
      {
         return this.§_-Z1§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§_-Og§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : include
      {
         return new include(this.time,this.duration);
      }
   }
}
