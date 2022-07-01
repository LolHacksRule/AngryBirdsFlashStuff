package §<1§
{
   import §0!_§.§!!G§;
   import §`!B§.Sprite;
   
   public class §@",§
   {
      
      public static const §"!;§:String = "setreferencesize";
      
      public static const §6"1§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §=@§:String = "zoom";
      
      public static const §5!<§:String = "playsound";
      
      public static const §+"+§:String = "fitwidth";
      
      public static const §`"1§:String = "fitheight";
      
      public static const §5!]§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §"!<§:Number;
      
      private var §4f§:Number;
      
      public function §@",§(param1:Number, param2:Number)
      {
         super();
         this.§"!<§ = param1;
         this.§4f§ = param2;
         if(isNaN(this.§4f§))
         {
            this.§4f§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§"!<§;
      }
      
      public function get duration() : Number
      {
         return this.§4f§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§!!G§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §@",§
      {
         return new §@",§(this.time,this.duration);
      }
   }
}
