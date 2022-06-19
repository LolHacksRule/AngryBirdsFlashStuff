package §3!Z§
{
   import §9t§.§=!>§;
   import §^a§.Sprite;
   
   public class §!'§
   {
      
      public static const §!?§:String = "setreferencesize";
      
      public static const §7!H§:String = "createsprite";
      
      public static const §4!D§:String = "scroll";
      
      public static const §-!%§:String = "zoom";
      
      public static const §@!$§:String = "playsound";
      
      public static const §0!V§:String = "fitwidth";
      
      public static const § Y§:String = "fitheight";
      
      public static const § !c§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §#!c§:Number;
      
      private var §,!I§:Number;
      
      public function §!'§(param1:Number, param2:Number)
      {
         super();
         this.§#!c§ = param1;
         this.§,!I§ = param2;
         if(isNaN(this.§,!I§))
         {
            this.§,!I§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§#!c§;
      }
      
      public function get duration() : Number
      {
         return this.§,!I§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §!'§
      {
         return new §!'§(this.time,this.duration);
      }
   }
}
