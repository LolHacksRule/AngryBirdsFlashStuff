package §_-n§
{
   import §_-8d§.§_-0FF§;
   import §_-uY§.Sprite;
   
   public class §_-tC§
   {
      
      public static const §_-Bj§:String = "setreferencesize";
      
      public static const §_-031§:String = "createsprite";
      
      public static const §_-DX§:String = "scroll";
      
      public static const §_-Cg§:String = "zoom";
      
      public static const §_-Rs§:String = "playsound";
      
      public static const §_-6q§:String = "fitwidth";
      
      public static const §_-05G§:String = "fitheight";
      
      public static const §_-Cz§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-063§:Number;
      
      private var §_-R8§:Number;
      
      public function §_-tC§(param1:Number, param2:Number)
      {
         super();
         this.§_-063§ = param1;
         this.§_-R8§ = param2;
         if(isNaN(this.§_-R8§))
         {
            this.§_-R8§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-063§;
      }
      
      public function get duration() : Number
      {
         return this.§_-R8§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-tC§
      {
         return new §_-tC§(this.time,this.duration);
      }
   }
}
