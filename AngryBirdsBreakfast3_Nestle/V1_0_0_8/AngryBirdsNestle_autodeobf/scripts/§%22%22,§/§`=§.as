package §"",§
{
   import §-![§.Sprite;
   import §6`§.§2a§;
   
   public class §`=§
   {
      
      public static const §2!8§:String = "setreferencesize";
      
      public static const §,,§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §=!r§:String = "zoom";
      
      public static const §]!N§:String = "playsound";
      
      public static const §;8§:String = "fitwidth";
      
      public static const §]!2§:String = "fitheight";
      
      public static const §,!a§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §3p§:Number;
      
      private var §1!R§:Number;
      
      public function §`=§(param1:Number, param2:Number)
      {
         super();
         this.§3p§ = param1;
         this.§1!R§ = param2;
         if(isNaN(this.§1!R§))
         {
            this.§1!R§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§3p§;
      }
      
      public function get duration() : Number
      {
         return this.§1!R§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§2a§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §`=§
      {
         return new §`=§(this.time,this.duration);
      }
   }
}
