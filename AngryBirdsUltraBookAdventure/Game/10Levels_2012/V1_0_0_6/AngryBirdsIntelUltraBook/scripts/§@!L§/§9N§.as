package §@!L§
{
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   
   public class §9N§
   {
      
      public static const §^!"§:String = "setreferencesize";
      
      public static const §[!9§:String = "createsprite";
      
      public static const §@!z§:String = "scroll";
      
      public static const §?F§:String = "zoom";
      
      public static const §8!O§:String = "playsound";
      
      public static const §?!i§:String = "fitwidth";
      
      public static const §`!k§:String = "fitheight";
      
      public static const §;!y§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §[f§:Number;
      
      private var §+o§:Number;
      
      public function §9N§(param1:Number, param2:Number)
      {
         super();
         this.§[f§ = param1;
         this.§+o§ = param2;
         if(isNaN(this.§+o§))
         {
            this.§+o§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§[f§;
      }
      
      public function get duration() : Number
      {
         return this.§+o§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §9N§
      {
         return new §9N§(this.time,this.duration);
      }
   }
}
