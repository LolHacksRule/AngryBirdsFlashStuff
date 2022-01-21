package §9L§
{
   import §5!l§.§ !D§;
   import §5x§.Sprite;
   
   public class §<6§
   {
      
      public static const §]!K§:String = "setreferencesize";
      
      public static const §;!C§:String = "createsprite";
      
      public static const §6![§:String = "scroll";
      
      public static const §!!F§:String = "zoom";
      
      public static const §+!B§:String = "playsound";
      
      public static const §+_§:String = "fitwidth";
      
      public static const §?!]§:String = "fitheight";
      
      public static const §4!W§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §6g§:Number;
      
      private var § !7§:Number;
      
      public function §<6§(param1:Number, param2:Number)
      {
         super();
         this.§6g§ = param1;
         this.§ !7§ = param2;
         if(isNaN(this.§ !7§))
         {
            this.§ !7§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§6g§;
      }
      
      public function get duration() : Number
      {
         return this.§ !7§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§ !D§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §<6§
      {
         return new §<6§(this.time,this.duration);
      }
   }
}
