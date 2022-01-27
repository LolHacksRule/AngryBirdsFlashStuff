package §?6§
{
   import §+f§.§4!8§;
   import §4G§.Sprite;
   
   public class §8+§
   {
      
      public static const §+0§:String = "setreferencesize";
      
      public static const §>t§:String = "createsprite";
      
      public static const §'!D§:String = "scroll";
      
      public static const §=t§:String = "zoom";
      
      public static const §,y§:String = "playsound";
      
      public static const §4o§:String = "fitwidth";
      
      public static const §&!P§:String = "fitheight";
      
      public static const §`!1§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §!p§:Number;
      
      private var §>k§:Number;
      
      public function §8+§(param1:Number, param2:Number)
      {
         super();
         this.§!p§ = param1;
         this.§>k§ = param2;
         if(isNaN(this.§>k§))
         {
            this.§>k§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§!p§;
      }
      
      public function get duration() : Number
      {
         return this.§>k§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§4!8§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §8+§
      {
         return new §8+§(this.time,this.duration);
      }
   }
}
