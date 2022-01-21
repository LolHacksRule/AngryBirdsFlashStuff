package §[>§
{
   import § !%§.§7!>§;
   import §&c§.Sprite;
   
   public class §?m§
   {
      
      public static const §>!8§:String = "setreferencesize";
      
      public static const §5!<§:String = "createsprite";
      
      public static const §#!B§:String = "scroll";
      
      public static const §,!n§:String = "zoom";
      
      public static const §&!]§:String = "playsound";
      
      public static const §0!X§:String = "fitwidth";
      
      public static const §&!R§:String = "fitheight";
      
      public static const §47§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §6!S§:Number;
      
      private var §8t§:Number;
      
      public function §?m§(param1:Number, param2:Number)
      {
         super();
         this.§6!S§ = param1;
         this.§8t§ = param2;
         if(isNaN(this.§8t§))
         {
            this.§8t§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§6!S§;
      }
      
      public function get duration() : Number
      {
         return this.§8t§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§7!>§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §?m§
      {
         return new §?m§(this.time,this.duration);
      }
   }
}
