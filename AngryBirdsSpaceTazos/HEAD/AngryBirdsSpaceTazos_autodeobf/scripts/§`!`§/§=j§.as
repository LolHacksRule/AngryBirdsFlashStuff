package §`!`§
{
   import §&!]§.Sprite;
   import §9!v§.§6a§;
   
   public class §=j§
   {
      
      public static const §1!Y§:String = "setreferencesize";
      
      public static const §%z§:String = "createsprite";
      
      public static const §;!3§:String = "scroll";
      
      public static const §0!J§:String = "zoom";
      
      public static const §&!a§:String = "playsound";
      
      public static const §6!J§:String = "fitwidth";
      
      public static const §8!6§:String = "fitheight";
      
      public static const §"!%§:String = "set_bg_colour";
      
      public static const §2!0§:String = "end";
       
      
      private var §6!q§:Number;
      
      private var §2"G§:Number;
      
      public function §=j§(param1:Number, param2:Number)
      {
         super();
         this.§6!q§ = param1;
         this.§2"G§ = param2;
         if(isNaN(this.§2"G§))
         {
            this.§2"G§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§6!q§;
      }
      
      public function get duration() : Number
      {
         return this.§2"G§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§6a§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §=j§
      {
         return new §=j§(this.time,this.duration);
      }
   }
}
