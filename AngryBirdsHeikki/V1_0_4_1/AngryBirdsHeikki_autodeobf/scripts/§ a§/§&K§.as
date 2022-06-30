package § a§
{
   import §%O§.§ !§;
   import §<!-§.Sprite;
   
   public class §&K§
   {
      
      public static const §]!E§:String = "setreferencesize";
      
      public static const §?F§:String = "createsprite";
      
      public static const §5-§:String = "scroll";
      
      public static const § !;§:String = "zoom";
      
      public static const §6q§:String = "playsound";
      
      public static const §2j§:String = "fitwidth";
      
      public static const §9W§:String = "fitheight";
      
      public static const §4h§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §-9§:Number;
      
      private var §=S§:Number;
      
      public function §&K§(param1:Number, param2:Number)
      {
         super();
         this.§-9§ = param1;
         this.§=S§ = param2;
         if(isNaN(this.§=S§))
         {
            this.§=S§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§-9§;
      }
      
      public function get duration() : Number
      {
         return this.§=S§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§ !§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §&K§
      {
         return new §&K§(this.time,this.duration);
      }
   }
}
