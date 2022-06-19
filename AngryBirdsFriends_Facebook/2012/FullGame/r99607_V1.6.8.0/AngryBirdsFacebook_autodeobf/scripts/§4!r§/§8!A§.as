package §4!r§
{
   import §?"<§.§<"!§;
   import §]&§.Sprite;
   
   public class §8!A§
   {
      
      public static const §@#§:String = "setreferencesize";
      
      public static const §[!V§:String = "createsprite";
      
      public static const §=!O§:String = "scroll";
      
      public static const § !F§:String = "zoom";
      
      public static const §7">§:String = "playsound";
      
      public static const §%"7§:String = "fitwidth";
      
      public static const §>!7§:String = "fitheight";
      
      public static const §@!l§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §]!B§:Number;
      
      private var §,§:Number;
      
      public function §8!A§(param1:Number, param2:Number)
      {
         super();
         this.§]!B§ = param1;
         this.§,§ = param2;
         if(isNaN(this.§,§))
         {
            this.§,§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§]!B§;
      }
      
      public function get duration() : Number
      {
         return this.§,§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§<"!§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §8!A§
      {
         return new §8!A§(this.time,this.duration);
      }
   }
}
