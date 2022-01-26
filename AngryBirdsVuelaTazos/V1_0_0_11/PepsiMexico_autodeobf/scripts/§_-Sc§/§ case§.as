package §_-Sc§
{
   import §_-vO§.Sprite;
   
   public class § case§
   {
      
      public static const §_-d6§:String = "setreferencesize";
      
      public static const §_-Ps§:String = "createsprite";
      
      public static const §_-rE§:String = "scroll";
      
      public static const §_-qV§:String = "playsound";
      
      public static const §_-p6§:String = "fitwidth";
      
      public static const §_-bH§:String = "fitheight";
      
      public static const §_-Ed§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-0o§:Number;
      
      private var §_-kD§:Number;
      
      public function § case§(param1:Number, param2:Number)
      {
         super();
         this.§_-0o§ = param1;
         this.§_-kD§ = param2;
         if(isNaN(this.§_-kD§))
         {
            this.§_-kD§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-0o§;
      }
      
      public function get duration() : Number
      {
         return this.§_-kD§;
      }
      
      public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : § case§
      {
         return new § case§(this.time,this.duration);
      }
   }
}
