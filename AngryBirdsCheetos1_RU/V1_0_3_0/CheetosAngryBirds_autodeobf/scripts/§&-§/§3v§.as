package §&-§
{
   import §9!a§.Sprite;
   import §=0§.§>O§;
   
   public class §3v§
   {
      
      public static const §6G§:String = "setreferencesize";
      
      public static const §=i§:String = "createsprite";
      
      public static const §7z§:String = "scroll";
      
      public static const §3!8§:String = "zoom";
      
      public static const §!!,§:String = "playsound";
      
      public static const §"!!§:String = "fitwidth";
      
      public static const §=!W§:String = "fitheight";
      
      public static const §%>§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §;c§:Number;
      
      private var §8!a§:Number;
      
      public function §3v§(param1:Number, param2:Number)
      {
         super();
         this.§;c§ = param1;
         this.§8!a§ = param2;
         if(isNaN(this.§8!a§))
         {
            this.§8!a§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§;c§;
      }
      
      public function get duration() : Number
      {
         return this.§8!a§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§>O§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §3v§
      {
         return new §3v§(this.time,this.duration);
      }
   }
}
