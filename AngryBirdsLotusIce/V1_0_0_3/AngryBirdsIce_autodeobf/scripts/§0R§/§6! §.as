package §0R§
{
   import §1n§.§5#§;
   import §^V§.Sprite;
   
   public class §6! §
   {
      
      public static const §=-§:String = "setreferencesize";
      
      public static const §>r§:String = "createsprite";
      
      public static const §1E§:String = "scroll";
      
      public static const §;!"§:String = "zoom";
      
      public static const §>?§:String = "playsound";
      
      public static const §-B§:String = "fitwidth";
      
      public static const §44§:String = "fitheight";
      
      public static const §2B§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var § !A§:Number;
      
      private var §,!6§:Number;
      
      public function §6! §(param1:Number, param2:Number)
      {
         super();
         this.§ !A§ = param1;
         this.§,!6§ = param2;
         if(isNaN(this.§,!6§))
         {
            this.§,!6§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§ !A§;
      }
      
      public function get duration() : Number
      {
         return this.§,!6§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §6! §
      {
         return new §6! §(this.time,this.duration);
      }
   }
}
