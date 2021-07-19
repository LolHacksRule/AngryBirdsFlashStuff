package §?_§
{
   import §4&§.§,C§;
   import §7!8§.Sprite;
   
   public class §3'§
   {
      
      public static const §>^§:String = "setreferencesize";
      
      public static const §4!$§:String = "createsprite";
      
      public static const §7!p§:String = "scroll";
      
      public static const §-""§:String = "zoom";
      
      public static const §7"2§:String = "playsound";
      
      public static const § 9§:String = "fitwidth";
      
      public static const §#!4§:String = "fitheight";
      
      public static const §1!U§:String = "set_bg_colour";
      
      public static const § "F§:String = "end";
       
      
      private var §;"!§:Number;
      
      private var §<^§:Number;
      
      public function §3'§(param1:Number, param2:Number)
      {
         super();
         this.§;"!§ = param1;
         this.§<^§ = param2;
         if(isNaN(this.§<^§))
         {
            this.§<^§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§;"!§;
      }
      
      public function get duration() : Number
      {
         return this.§<^§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §3'§
      {
         return new §3'§(this.time,this.duration);
      }
   }
}
