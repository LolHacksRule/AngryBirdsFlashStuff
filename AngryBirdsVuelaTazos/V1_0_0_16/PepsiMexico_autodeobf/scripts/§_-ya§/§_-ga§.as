package §_-ya§
{
   import §_-LP§.Sprite;
   
   public class §_-ga§
   {
      
      public static const §_-sO§:String = "setreferencesize";
      
      public static const §_-ao§:String = "createsprite";
      
      public static const §_-8R§:String = "scroll";
      
      public static const §_-uz§:String = "playsound";
      
      public static const §_-8Q§:String = "fitwidth";
      
      public static const §_-tu§:String = "fitheight";
      
      public static const §_-1B§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §_-c0§:Number;
      
      private var §_-yT§:Number;
      
      public function §_-ga§(param1:Number, param2:Number)
      {
         super();
         this.§_-c0§ = param1;
         this.§_-yT§ = param2;
         if(isNaN(this.§_-yT§))
         {
            this.§_-yT§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-c0§;
      }
      
      public function get duration() : Number
      {
         return this.§_-yT§;
      }
      
      public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §_-ga§
      {
         return new §_-ga§(this.time,this.duration);
      }
   }
}
