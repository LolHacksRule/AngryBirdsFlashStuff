package §'r§
{
   import §"k§.§02§;
   import §;!Q§.Sprite;
   
   public class §,!H§
   {
      
      public static const §4!E§:String = "setreferencesize";
      
      public static const §=!Q§:String = "createsprite";
      
      public static const §"!4§:String = "scroll";
      
      public static const §>!"§:String = "zoom";
      
      public static const §1!4§:String = "playsound";
      
      public static const §2!H§:String = "fitwidth";
      
      public static const §9w§:String = "fitheight";
      
      public static const § !X§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §5!&§:Number;
      
      private var §@!!§:Number;
      
      public function §,!H§(param1:Number, param2:Number)
      {
         super();
         this.§5!&§ = param1;
         this.§@!!§ = param2;
         if(isNaN(this.§@!!§))
         {
            this.§@!!§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§5!&§;
      }
      
      public function get duration() : Number
      {
         return this.§@!!§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§02§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,!H§
      {
         return new §,!H§(this.time,this.duration);
      }
   }
}
