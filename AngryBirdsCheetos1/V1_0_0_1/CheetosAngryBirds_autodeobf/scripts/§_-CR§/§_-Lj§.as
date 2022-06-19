package §_-CR§
{
   import §_-5p§.§_-Kf§;
   import §_-Ls§.Sprite;
   
   public class §_-Lj§
   {
      
      public static const §_-kz§:String = "setreferencesize";
      
      public static const §_-h2§:String = "createsprite";
      
      public static const §_-c§:String = "scroll";
      
      public static const §_-Ur§:String = "zoom";
      
      public static const §_-mu§:String = "playsound";
      
      public static const §_-Mr§:String = "fitwidth";
      
      public static const §_-y0§:String = "fitheight";
      
      public static const §_-CT§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-pE§:Number;
      
      private var §_-il§:Number;
      
      public function §_-Lj§(param1:Number, param2:Number)
      {
         super();
         this.§_-pE§ = param1;
         this.§_-il§ = param2;
         if(isNaN(this.§_-il§))
         {
            this.§_-il§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-pE§;
      }
      
      public function get duration() : Number
      {
         return this.§_-il§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§_-Kf§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-Lj§
      {
         return new §_-Lj§(this.time,this.duration);
      }
   }
}
