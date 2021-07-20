package §[!<§
{
   import §%-§.Sprite;
   import §<h§.§;@§;
   
   public class §#v§
   {
      
      public static const §,1§:String = "setreferencesize";
      
      public static const §>L§:String = "createsprite";
      
      public static const §@8§:String = "scroll";
      
      public static const §3M§:String = "zoom";
      
      public static const §2Y§:String = "playsound";
      
      public static const §&!3§:String = "fitwidth";
      
      public static const §]-§:String = "fitheight";
      
      public static const §&>§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §=,§:Number;
      
      private var §'Y§:Number;
      
      public function §#v§(param1:Number, param2:Number)
      {
         super();
         this.§=,§ = param1;
         this.§'Y§ = param2;
         if(isNaN(this.§'Y§))
         {
            this.§'Y§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§=,§;
      }
      
      public function get duration() : Number
      {
         return this.§'Y§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§;@§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §#v§
      {
         return new §#v§(this.time,this.duration);
      }
   }
}
