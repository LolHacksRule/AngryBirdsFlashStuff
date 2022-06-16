package §3D§
{
   import §#S§.§?!?§;
   import §]!v§.Sprite;
   
   public class §3T§
   {
      
      public static const §="K§:String = "setreferencesize";
      
      public static const §7!<§:String = "createsprite";
      
      public static const §%!^§:String = "scroll";
      
      public static const § !E§:String = "zoom";
      
      public static const §8c§:String = "playsound";
      
      public static const §[!?§:String = "fitwidth";
      
      public static const §"!c§:String = "fitheight";
      
      public static const § z§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §=!S§:Number;
      
      private var §>" §:Number;
      
      public function §3T§(param1:Number, param2:Number)
      {
         super();
         this.§=!S§ = param1;
         this.§>" § = param2;
         if(isNaN(this.§>" §))
         {
            this.§>" § = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§=!S§;
      }
      
      public function get duration() : Number
      {
         return this.§>" §;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§?!?§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §3T§
      {
         return new §3T§(this.time,this.duration);
      }
   }
}
