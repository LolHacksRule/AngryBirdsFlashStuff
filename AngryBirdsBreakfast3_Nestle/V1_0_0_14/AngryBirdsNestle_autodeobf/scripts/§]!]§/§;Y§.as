package §]!]§
{
   import §0!_§.§!!G§;
   import §`!B§.Sprite;
   
   public class §;Y§
   {
      
      public static const §@",§:String = "setreferencesize";
      
      public static const §"!;§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §6"1§:String = "zoom";
      
      public static const §=@§:String = "playsound";
      
      public static const §5!<§:String = "fitwidth";
      
      public static const §+"+§:String = "fitheight";
      
      public static const §`"1§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §"!<§:Number;
      
      private var §3U§:Number;
      
      public function §;Y§(param1:Number, param2:Number)
      {
         super();
         this.§"!<§ = param1;
         this.§3U§ = param2;
         if(isNaN(this.§3U§))
         {
            this.§3U§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§"!<§;
      }
      
      public function get duration() : Number
      {
         return this.§3U§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§!!G§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §;Y§
      {
         return new §;Y§(this.time,this.duration);
      }
   }
}
