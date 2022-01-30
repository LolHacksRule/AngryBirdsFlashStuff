package §0!?§
{
   import § !=§.Sprite;
   import §;L§.§"!X§;
   
   public class §&!G§
   {
      
      public static const §`!j§:String = "setreferencesize";
      
      public static const §1!-§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §"r§:String = "zoom";
      
      public static const §'y§:String = "playsound";
      
      public static const §?!3§:String = "fitwidth";
      
      public static const § !K§:String = "fitheight";
      
      public static const §?!7§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §#"'§:Number;
      
      private var §&!-§:Number;
      
      public function §&!G§(param1:Number, param2:Number)
      {
         super();
         this.§#"'§ = param1;
         this.§&!-§ = param2;
         if(isNaN(this.§&!-§))
         {
            this.§&!-§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§#"'§;
      }
      
      public function get duration() : Number
      {
         return this.§&!-§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§"!X§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §&!G§
      {
         return new §&!G§(this.time,this.duration);
      }
   }
}
