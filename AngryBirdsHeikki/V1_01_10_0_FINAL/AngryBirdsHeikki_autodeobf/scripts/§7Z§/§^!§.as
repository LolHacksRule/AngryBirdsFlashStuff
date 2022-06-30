package §7Z§
{
   import §2Y§.Sprite;
   import §=!<§.§>a§;
   
   public class §^!§
   {
      
      public static const §"%§:String = "setreferencesize";
      
      public static const §+R§:String = "createsprite";
      
      public static const §7!b§:String = "scroll";
      
      public static const §+q§:String = "zoom";
      
      public static const §"Z§:String = "playsound";
      
      public static const §@u§:String = "fitwidth";
      
      public static const §"6§:String = "fitheight";
      
      public static const §"g§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §+K§:Number;
      
      private var §;q§:Number;
      
      public function §^!§(param1:Number, param2:Number)
      {
         super();
         this.§+K§ = param1;
         this.§;q§ = param2;
         if(isNaN(this.§;q§))
         {
            this.§;q§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§+K§;
      }
      
      public function get duration() : Number
      {
         return this.§;q§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §^!§
      {
         return new §^!§(this.time,this.duration);
      }
   }
}
