package §3"8§
{
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   
   public class §-"r§
   {
      
      public static const §<"o§:String = "setreferencesize";
      
      public static const §9!§:String = "createsprite";
      
      public static const §!g§:String = "scroll";
      
      public static const §[!-§:String = "zoom";
      
      public static const §5"m§:String = "playsound";
      
      public static const §]"7§:String = "fitwidth";
      
      public static const §`n§:String = "fitheight";
      
      public static const §>;§:String = "set_bg_colour";
      
      public static const §!"w§:String = "end";
       
      
      private var §'"E§:Number;
      
      private var §-"v§:Number;
      
      public function §-"r§(param1:Number, param2:Number)
      {
         super();
         this.§'"E§ = param1;
         this.§-"v§ = param2;
         if(isNaN(this.§-"v§))
         {
            this.§-"v§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§'"E§;
      }
      
      public function get duration() : Number
      {
         return this.§-"v§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§&"0§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §-"r§
      {
         return new §-"r§(this.time,this.duration);
      }
   }
}
