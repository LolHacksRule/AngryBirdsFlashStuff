package §3n§
{
   import § !K§.Sprite;
   import §9!Y§.§!q§;
   
   public class §'0§
   {
      
      public static const §-d§:String = "setreferencesize";
      
      public static const §<4§:String = "createsprite";
      
      public static const §1!=§:String = "scroll";
      
      public static const §-m§:String = "zoom";
      
      public static const §?!9§:String = "playsound";
      
      public static const §?!A§:String = "fitwidth";
      
      public static const §!%§:String = "fitheight";
      
      public static const §4v§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §7!G§:Number;
      
      private var §60§:Number;
      
      public function §'0§(param1:Number, param2:Number)
      {
         super();
         this.§7!G§ = param1;
         this.§60§ = param2;
         if(isNaN(this.§60§))
         {
            this.§60§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§7!G§;
      }
      
      public function get duration() : Number
      {
         return this.§60§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§!q§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §'0§
      {
         return new §'0§(this.time,this.duration);
      }
   }
}
