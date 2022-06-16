package §;$-§
{
   import §^"S§.Sprite;
   import §`"8§.§34§;
   
   public class §<#N§
   {
      
      public static const §1P§:String = "setreferencesize";
      
      public static const §!!O§:String = "createsprite";
      
      public static const §`#_§:String = "scroll";
      
      public static const §3"2§:String = "zoom";
      
      public static const §?!8§:String = "playsound";
      
      public static const §1!,§:String = "fitwidth";
      
      public static const §`#1§:String = "fitheight";
      
      public static const §`"S§:String = "set_bg_colour";
      
      public static const §3"N§:String = "end";
       
      
      private var §'"1§:Number;
      
      private var §9f§:Number;
      
      public function §<#N§(param1:Number, param2:Number)
      {
         super();
         this.§'"1§ = param1;
         this.§9f§ = param2;
         if(isNaN(this.§9f§))
         {
            this.§9f§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§'"1§;
      }
      
      public function get duration() : Number
      {
         return this.§9f§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§34§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §<#N§
      {
         return new §<#N§(this.time,this.duration);
      }
   }
}
