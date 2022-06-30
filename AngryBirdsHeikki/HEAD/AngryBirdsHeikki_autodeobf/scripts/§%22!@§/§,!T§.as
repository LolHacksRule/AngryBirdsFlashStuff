package §"!@§
{
   import §+!]§.§!,§;
   import §6!;§.Sprite;
   
   public class §,!T§
   {
      
      public static const §?b§:String = "setreferencesize";
      
      public static const §function§:String = "createsprite";
      
      public static const §7c§:String = "scroll";
      
      public static const §@!+§:String = "zoom";
      
      public static const §'!K§:String = "playsound";
      
      public static const §-D§:String = "fitwidth";
      
      public static const §;,§:String = "fitheight";
      
      public static const §@H§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §2!N§:Number;
      
      private var §5-§:Number;
      
      public function §,!T§(param1:Number, param2:Number)
      {
         super();
         this.§2!N§ = param1;
         this.§5-§ = param2;
         if(isNaN(this.§5-§))
         {
            this.§5-§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§2!N§;
      }
      
      public function get duration() : Number
      {
         return this.§5-§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§!,§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,!T§
      {
         return new §,!T§(this.time,this.duration);
      }
   }
}
