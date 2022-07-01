package §"E§
{
   import §0!Y§.Sprite;
   import §6!?§.§`!O§;
   
   public class §%!N§
   {
      
      public static const § ?§:String = "setreferencesize";
      
      public static const §&V§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §@!q§:String = "zoom";
      
      public static const §7!1§:String = "playsound";
      
      public static const § s§:String = "fitwidth";
      
      public static const §,_§:String = "fitheight";
      
      public static const §'!j§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §1!C§:Number;
      
      private var §'m§:Number;
      
      public function §%!N§(param1:Number, param2:Number)
      {
         super();
         this.§1!C§ = param1;
         this.§'m§ = param2;
         if(isNaN(this.§'m§))
         {
            this.§'m§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§1!C§;
      }
      
      public function get duration() : Number
      {
         return this.§'m§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§`!O§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §%!N§
      {
         return new §%!N§(this.time,this.duration);
      }
   }
}
