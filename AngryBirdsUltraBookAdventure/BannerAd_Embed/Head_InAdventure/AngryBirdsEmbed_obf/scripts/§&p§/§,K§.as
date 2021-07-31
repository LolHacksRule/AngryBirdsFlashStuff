package §&p§
{
   import §&o§.Sprite;
   import §9K§.§5!H§;
   
   public class §,K§
   {
      
      public static const §;r§:String = "setreferencesize";
      
      public static const §<!,§:String = "createsprite";
      
      public static const §%!0§:String = "scroll";
      
      public static const §package§:String = "zoom";
      
      public static const §`g§:String = "playsound";
      
      public static const §[U§:String = "fitwidth";
      
      public static const § L§:String = "fitheight";
      
      public static const §;&§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §^f§:Number;
      
      private var §67§:Number;
      
      public function §,K§(param1:Number, param2:Number)
      {
         super();
         this.§^f§ = param1;
         this.§67§ = param2;
         if(isNaN(this.§67§))
         {
            this.§67§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§^f§;
      }
      
      public function get duration() : Number
      {
         return this.§67§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,K§
      {
         return new §,K§(this.time,this.duration);
      }
   }
}
