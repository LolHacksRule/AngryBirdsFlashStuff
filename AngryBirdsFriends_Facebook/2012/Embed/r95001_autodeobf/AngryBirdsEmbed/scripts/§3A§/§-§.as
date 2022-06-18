package §3A§
{
   import §<k§.Sprite;
   import §[n§.§?+§;
   
   public class §-§
   {
      
      public static const § 9§:String = "setreferencesize";
      
      public static const §'>§:String = "createsprite";
      
      public static const §;$§:String = "scroll";
      
      public static const §#!=§:String = "zoom";
      
      public static const §^N§:String = "playsound";
      
      public static const §`G§:String = "fitwidth";
      
      public static const §=Q§:String = "fitheight";
      
      public static const §1c§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §`!,§:Number;
      
      private var §4!>§:Number;
      
      public function §-§(param1:Number, param2:Number)
      {
         super();
         this.§`!,§ = param1;
         this.§4!>§ = param2;
         if(isNaN(this.§4!>§))
         {
            this.§4!>§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§`!,§;
      }
      
      public function get duration() : Number
      {
         return this.§4!>§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§?+§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §-§
      {
         return new §-§(this.time,this.duration);
      }
   }
}
