package §'6§
{
   import §3§.Sprite;
   import §`n§.§#H§;
   
   public class §+v§
   {
      
      public static const §'!T§:String = "setreferencesize";
      
      public static const §,E§:String = "createsprite";
      
      public static const §?!H§:String = "scroll";
      
      public static const §[L§:String = "zoom";
      
      public static const §^!C§:String = "playsound";
      
      public static const §^m§:String = "fitwidth";
      
      public static const §<!%§:String = "fitheight";
      
      public static const §0P§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §4!§:Number;
      
      private var §&!#§:Number;
      
      public function §+v§(param1:Number, param2:Number)
      {
         super();
         this.§4!§ = param1;
         this.§&!#§ = param2;
         if(isNaN(this.§&!#§))
         {
            this.§&!#§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§4!§;
      }
      
      public function get duration() : Number
      {
         return this.§&!#§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§#H§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §+v§
      {
         return new §+v§(this.time,this.duration);
      }
   }
}
