package §4!o§
{
   import § ! §.§5!x§;
   import §6![§.Sprite;
   
   public class §0!c§
   {
      
      public static const §=!m§:String = "setreferencesize";
      
      public static const §"h§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §@""§:String = "zoom";
      
      public static const §2!Q§:String = "playsound";
      
      public static const §2!%§:String = "fitwidth";
      
      public static const §`"!§:String = "fitheight";
      
      public static const §7&§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §?W§:Number;
      
      private var §0"§:Number;
      
      public function §0!c§(param1:Number, param2:Number)
      {
         super();
         this.§?W§ = param1;
         this.§0"§ = param2;
         if(isNaN(this.§0"§))
         {
            this.§0"§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§?W§;
      }
      
      public function get duration() : Number
      {
         return this.§0"§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §0!c§
      {
         return new §0!c§(this.time,this.duration);
      }
   }
}
