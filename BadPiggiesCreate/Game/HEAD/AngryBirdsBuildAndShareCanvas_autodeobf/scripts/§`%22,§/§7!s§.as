package §`",§
{
   import §+!-§.Sprite;
   import §;"7§.§="<§;
   
   public class §7!s§
   {
      
      public static const §>=§:String = "setreferencesize";
      
      public static const §"B§:String = "createsprite";
      
      public static const §+";§:String = "scroll";
      
      public static const §5@§:String = "zoom";
      
      public static const §4!S§:String = "playsound";
      
      public static const §`"7§:String = "fitwidth";
      
      public static const §<a§:String = "fitheight";
      
      public static const §=$§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §9R§:Number;
      
      private var §;"4§:Number;
      
      public function §7!s§(param1:Number, param2:Number)
      {
         super();
         this.§9R§ = param1;
         this.§;"4§ = param2;
         if(isNaN(this.§;"4§))
         {
            this.§;"4§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§9R§;
      }
      
      public function get duration() : Number
      {
         return this.§;"4§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §7!s§
      {
         return new §7!s§(this.time,this.duration);
      }
   }
}
