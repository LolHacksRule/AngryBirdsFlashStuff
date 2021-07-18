package §4;§
{
   import §'!6§.Sprite;
   import §<T§.§`m§;
   
   public class §^g§
   {
      
      public static const §%!c§:String = "setreferencesize";
      
      public static const §^!V§:String = "createsprite";
      
      public static const §9;§:String = "scroll";
      
      public static const §-a§:String = "zoom";
      
      public static const §[Q§:String = "playsound";
      
      public static const §`!E§:String = "fitwidth";
      
      public static const §4e§:String = "fitheight";
      
      public static const §2!'§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §"!M§:Number;
      
      private var §0!=§:Number;
      
      public function §^g§(param1:Number, param2:Number)
      {
         super();
         this.§"!M§ = param1;
         this.§0!=§ = param2;
         if(isNaN(this.§0!=§))
         {
            this.§0!=§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§"!M§;
      }
      
      public function get duration() : Number
      {
         return this.§0!=§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §^g§
      {
         return new §^g§(this.time,this.duration);
      }
   }
}
