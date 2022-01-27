package §1a§
{
   import §-!'§.Sprite;
   import §<A§.§'K§;
   
   public class §#]§
   {
      
      public static const native:String = "setreferencesize";
      
      public static const § !"§:String = "createsprite";
      
      public static const §?a§:String = "scroll";
      
      public static const §%_§:String = "zoom";
      
      public static const §@!?§:String = "playsound";
      
      public static const §2<§:String = "fitwidth";
      
      public static const §0!7§:String = "fitheight";
      
      public static const §0b§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §`!3§:Number;
      
      private var §!#§:Number;
      
      public function §#]§(param1:Number, param2:Number)
      {
         super();
         this.§`!3§ = param1;
         this.§!#§ = param2;
         if(isNaN(this.§!#§))
         {
            this.§!#§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§`!3§;
      }
      
      public function get duration() : Number
      {
         return this.§!#§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'K§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §#]§
      {
         return new §#]§(this.time,this.duration);
      }
   }
}
