package §!-§
{
   import §1!Y§.Sprite;
   import §[_§.§2!B§;
   
   public class §[u§
   {
      
      public static const §6M§:String = "setreferencesize";
      
      public static const §5!k§:String = "createsprite";
      
      public static const §#[§:String = "scroll";
      
      public static const §-;§:String = "zoom";
      
      public static const §^!$§:String = "playsound";
      
      public static const §,!=§:String = "fitwidth";
      
      public static const §7g§:String = "fitheight";
      
      public static const §&!;§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §]!p§:Number;
      
      private var §?!d§:Number;
      
      public function §[u§(param1:Number, param2:Number)
      {
         super();
         this.§]!p§ = param1;
         this.§?!d§ = param2;
         if(isNaN(this.§?!d§))
         {
            this.§?!d§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§]!p§;
      }
      
      public function get duration() : Number
      {
         return this.§?!d§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§2!B§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §[u§
      {
         return new §[u§(this.time,this.duration);
      }
   }
}
