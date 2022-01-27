package §-!5§
{
   import §4"@§.Sprite;
   import §^e§.§0"1§;
   
   public class §6!t§
   {
      
      public static const §;s§:String = "setreferencesize";
      
      public static const §4&§:String = "createsprite";
      
      public static const §[!_§:String = "scroll";
      
      public static const §7!n§:String = "zoom";
      
      public static const §6!w§:String = "playsound";
      
      public static const §1!f§:String = "fitwidth";
      
      public static const §'!,§:String = "fitheight";
      
      public static const §1!H§:String = "set_bg_colour";
      
      public static const §6!s§:String = "end";
       
      
      private var §+!a§:Number;
      
      private var §5f§:Number;
      
      public function §6!t§(param1:Number, param2:Number)
      {
         super();
         this.§+!a§ = param1;
         this.§5f§ = param2;
         if(isNaN(this.§5f§))
         {
            this.§5f§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§+!a§;
      }
      
      public function get duration() : Number
      {
         return this.§5f§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§0"1§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §6!t§
      {
         return new §6!t§(this.time,this.duration);
      }
   }
}
