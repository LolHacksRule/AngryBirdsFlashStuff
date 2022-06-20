package §0=§
{
   import §&!v§.Sprite;
   import §7!j§.§'0§;
   
   public class §6$'§
   {
      
      public static const §5t§:String = "setreferencesize";
      
      public static const §8#A§:String = "createsprite";
      
      public static const §3p§:String = "scroll";
      
      public static const §,G§:String = "zoom";
      
      public static const §,b§:String = "playsound";
      
      public static const §?U§:String = "fitwidth";
      
      public static const §1#L§:String = "fitheight";
      
      public static const §'s§:String = "set_bg_colour";
      
      public static const §-E§:String = "end";
       
      
      private var §#"^§:Number;
      
      private var §>$!§:Number;
      
      public function §6$'§(param1:Number, param2:Number)
      {
         super();
         this.§#"^§ = param1;
         this.§>$!§ = param2;
         if(isNaN(this.§>$!§))
         {
            this.§>$!§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§#"^§;
      }
      
      public function get duration() : Number
      {
         return this.§>$!§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§'0§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §6$'§
      {
         return new §6$'§(this.time,this.duration);
      }
   }
}
