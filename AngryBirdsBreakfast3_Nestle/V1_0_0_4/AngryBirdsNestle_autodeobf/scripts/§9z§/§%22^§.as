package §9z§
{
   import §-!f§.Sprite;
   import §6_§.§,!>§;
   
   public class §"^§
   {
      
      public static const §>1§:String = "setreferencesize";
      
      public static const §6!D§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §2Q§:String = "zoom";
      
      public static const §!"+§:String = "playsound";
      
      public static const §1m§:String = "fitwidth";
      
      public static const §6"$§:String = "fitheight";
      
      public static const §0""§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §!`§:Number;
      
      private var §7!-§:Number;
      
      public function §"^§(param1:Number, param2:Number)
      {
         super();
         this.§!`§ = param1;
         this.§7!-§ = param2;
         if(isNaN(this.§7!-§))
         {
            this.§7!-§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§!`§;
      }
      
      public function get duration() : Number
      {
         return this.§7!-§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§,!>§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §"^§
      {
         return new §"^§(this.time,this.duration);
      }
   }
}
