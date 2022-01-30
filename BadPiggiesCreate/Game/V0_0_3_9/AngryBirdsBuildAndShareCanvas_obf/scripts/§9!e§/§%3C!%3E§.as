package §9!e§
{
   import §7q§.Sprite;
   import §;!<§.§7!f§;
   
   public class §<!>§
   {
      
      public static const §8"#§:String = "setreferencesize";
      
      public static const §8C§:String = "createsprite";
      
      public static const §,'§:String = "scroll";
      
      public static const §2v§:String = "zoom";
      
      public static const §2!`§:String = "playsound";
      
      public static const §'!f§:String = "fitwidth";
      
      public static const §=^§:String = "fitheight";
      
      public static const §7!<§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §7!n§:Number;
      
      private var §`!$§:Number;
      
      public function §<!>§(param1:Number, param2:Number)
      {
         super();
         this.§7!n§ = param1;
         this.§`!$§ = param2;
         if(isNaN(this.§`!$§))
         {
            this.§`!$§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§7!n§;
      }
      
      public function get duration() : Number
      {
         return this.§`!$§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§7!f§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §<!>§
      {
         return new §<!>§(this.time,this.duration);
      }
   }
}
