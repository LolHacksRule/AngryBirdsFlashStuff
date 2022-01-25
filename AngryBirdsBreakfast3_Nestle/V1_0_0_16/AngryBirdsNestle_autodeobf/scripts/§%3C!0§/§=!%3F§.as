package §<!0§
{
   import §2`§.§%!!§;
   import §3!J§.Sprite;
   
   public class §=!?§
   {
      
      public static const §%",§:String = "setreferencesize";
      
      public static const §@o§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §[!v§:String = "zoom";
      
      public static const §`!1§:String = "playsound";
      
      public static const §3!X§:String = "fitwidth";
      
      public static const §1!6§:String = "fitheight";
      
      public static const §`P§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §'0§:Number;
      
      private var §;?§:Number;
      
      public function §=!?§(param1:Number, param2:Number)
      {
         super();
         this.§'0§ = param1;
         this.§;?§ = param2;
         if(isNaN(this.§;?§))
         {
            this.§;?§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§'0§;
      }
      
      public function get duration() : Number
      {
         return this.§;?§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §=!?§
      {
         return new §=!?§(this.time,this.duration);
      }
   }
}
