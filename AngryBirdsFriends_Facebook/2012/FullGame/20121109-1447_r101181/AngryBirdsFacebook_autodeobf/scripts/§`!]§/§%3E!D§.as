package §`!]§
{
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   
   public class §>!D§
   {
      
      public static const §]">§:String = "setreferencesize";
      
      public static const §?";§:String = "createsprite";
      
      public static const § !A§:String = "scroll";
      
      public static const §;"6§:String = "zoom";
      
      public static const §1d§:String = "playsound";
      
      public static const §,_§:String = "fitwidth";
      
      public static const §9"F§:String = "fitheight";
      
      public static const §]R§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §?!x§:Number;
      
      private var §[0§:Number;
      
      public function §>!D§(param1:Number, param2:Number)
      {
         super();
         this.§?!x§ = param1;
         this.§[0§ = param2;
         if(isNaN(this.§[0§))
         {
            this.§[0§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§?!x§;
      }
      
      public function get duration() : Number
      {
         return this.§[0§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §>!D§
      {
         return new §>!D§(this.time,this.duration);
      }
   }
}
