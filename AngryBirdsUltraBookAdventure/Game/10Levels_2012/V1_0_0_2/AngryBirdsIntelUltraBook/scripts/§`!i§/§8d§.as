package §`!i§
{
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §8d§
   {
      
      public static const §^!$§:String = "setreferencesize";
      
      public static const §>!Y§:String = "createsprite";
      
      public static const §4'§:String = "scroll";
      
      public static const §!n§:String = "zoom";
      
      public static const §`!F§:String = "playsound";
      
      public static const §>%§:String = "fitwidth";
      
      public static const §else §:String = "fitheight";
      
      public static const §`J§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §=U§:Number;
      
      private var §[1§:Number;
      
      public function §8d§(param1:Number, param2:Number)
      {
         super();
         this.§=U§ = param1;
         this.§[1§ = param2;
         if(isNaN(this.§[1§))
         {
            this.§[1§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§=U§;
      }
      
      public function get duration() : Number
      {
         return this.§[1§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §8d§
      {
         return new §8d§(this.time,this.duration);
      }
   }
}
