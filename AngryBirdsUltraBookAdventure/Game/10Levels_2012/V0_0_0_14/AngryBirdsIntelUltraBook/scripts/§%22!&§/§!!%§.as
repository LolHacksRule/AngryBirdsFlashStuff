package §"!&§
{
   import §,6§.§!o§;
   import §9E§.Sprite;
   
   public class §!!%§
   {
      
      public static const §,1§:String = "setreferencesize";
      
      public static const §<!Q§:String = "createsprite";
      
      public static const §+!S§:String = "scroll";
      
      public static const §4!M§:String = "zoom";
      
      public static const §,!3§:String = "playsound";
      
      public static const §^!,§:String = "fitwidth";
      
      public static const §]!F§:String = "fitheight";
      
      public static const §'l§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §?Q§:Number;
      
      private var §[!&§:Number;
      
      public function §!!%§(param1:Number, param2:Number)
      {
         super();
         this.§?Q§ = param1;
         this.§[!&§ = param2;
         if(isNaN(this.§[!&§))
         {
            this.§[!&§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§?Q§;
      }
      
      public function get duration() : Number
      {
         return this.§[!&§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §!!%§
      {
         return new §!!%§(this.time,this.duration);
      }
   }
}
