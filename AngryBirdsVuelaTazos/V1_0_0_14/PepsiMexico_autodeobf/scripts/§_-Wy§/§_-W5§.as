package §_-Wy§
{
   import §_-b5§.Sprite;
   
   public class §_-W5§
   {
      
      public static const §_-Rd§:String = "setreferencesize";
      
      public static const §_-FU§:String = "createsprite";
      
      public static const §_-3e§:String = "scroll";
      
      public static const §_-Sy§:String = "playsound";
      
      public static const §_-qm§:String = "fitwidth";
      
      public static const §_-TH§:String = "fitheight";
      
      public static const §_-gd§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-IJ§:Number;
      
      private var §_-tS§:Number;
      
      public function §_-W5§(param1:Number, param2:Number)
      {
         super();
         this.§_-IJ§ = param1;
         this.§_-tS§ = param2;
         if(isNaN(this.§_-tS§))
         {
            this.§_-tS§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-IJ§;
      }
      
      public function get duration() : Number
      {
         return this.§_-tS§;
      }
      
      public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-W5§
      {
         return new §_-W5§(this.time,this.duration);
      }
   }
}
