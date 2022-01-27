package §'7§
{
   import § N§.Sprite;
   import §#e§.§'?§;
   
   public class §@!F§
   {
      
      public static const §^i§:String = "setreferencesize";
      
      public static const §=5§:String = "createsprite";
      
      public static const §,!P§:String = "scroll";
      
      public static const §5&§:String = "zoom";
      
      public static const §@`§:String = "playsound";
      
      public static const §!!=§:String = "fitwidth";
      
      public static const §0d§:String = "fitheight";
      
      public static const §-T§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §-!9§:Number;
      
      private var §#!A§:Number;
      
      public function §@!F§(param1:Number, param2:Number)
      {
         super();
         this.§-!9§ = param1;
         this.§#!A§ = param2;
         if(isNaN(this.§#!A§))
         {
            this.§#!A§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§-!9§;
      }
      
      public function get duration() : Number
      {
         return this.§#!A§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §@!F§
      {
         return new §@!F§(this.time,this.duration);
      }
   }
}
