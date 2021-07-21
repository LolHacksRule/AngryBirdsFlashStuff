package §`@§
{
   import §#?§.§6!4§;
   import §90§.Sprite;
   
   public class §[!"§
   {
      
      public static const §<<§:String = "setreferencesize";
      
      public static const §82§:String = "createsprite";
      
      public static const §2!7§:String = "scroll";
      
      public static const §3W§:String = "zoom";
      
      public static const §;!K§:String = "playsound";
      
      public static const §[P§:String = "fitwidth";
      
      public static const §9^§:String = "fitheight";
      
      public static const §'<§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §"<§:Number;
      
      private var §2>§:Number;
      
      public function §[!"§(param1:Number, param2:Number)
      {
         super();
         this.§"<§ = param1;
         this.§2>§ = param2;
         if(isNaN(this.§2>§))
         {
            this.§2>§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§"<§;
      }
      
      public function get duration() : Number
      {
         return this.§2>§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§6!4§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §[!"§
      {
         return new §[!"§(this.time,this.duration);
      }
   }
}
