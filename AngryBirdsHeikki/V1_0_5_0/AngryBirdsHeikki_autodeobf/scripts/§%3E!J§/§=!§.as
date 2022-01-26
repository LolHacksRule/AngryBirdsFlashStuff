package §>!J§
{
   import §[=§.Sprite;
   import §`!H§.§@!E§;
   
   public class §=!§
   {
      
      public static const §-Q§:String = "setreferencesize";
      
      public static const §5!O§:String = "createsprite";
      
      public static const §1!9§:String = "scroll";
      
      public static const §3!2§:String = "zoom";
      
      public static const §-!2§:String = "playsound";
      
      public static const §19§:String = "fitwidth";
      
      public static const §>G§:String = "fitheight";
      
      public static const §?!_§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §9E§:Number;
      
      private var § E§:Number;
      
      public function §=!§(param1:Number, param2:Number)
      {
         super();
         this.§9E§ = param1;
         this.§ E§ = param2;
         if(isNaN(this.§ E§))
         {
            this.§ E§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§9E§;
      }
      
      public function get duration() : Number
      {
         return this.§ E§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§@!E§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §=!§
      {
         return new §=!§(this.time,this.duration);
      }
   }
}
