package §]f§
{
   import §"a§.§>X§;
   import §;q§.Sprite;
   
   public class §6$§
   {
      
      public static const §,_§:String = "setreferencesize";
      
      public static const §6p§:String = "createsprite";
      
      public static const §?!7§:String = "scroll";
      
      public static const §,2§:String = "zoom";
      
      public static const §5!%§:String = "playsound";
      
      public static const §%j§:String = "fitwidth";
      
      public static const §&B§:String = "fitheight";
      
      public static const §<h§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §;?§:Number;
      
      private var §@4§:Number;
      
      public function §6$§(param1:Number, param2:Number)
      {
         super();
         this.§;?§ = param1;
         this.§@4§ = param2;
         if(isNaN(this.§@4§))
         {
            this.§@4§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§;?§;
      }
      
      public function get duration() : Number
      {
         return this.§@4§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§>X§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §6$§
      {
         return new §6$§(this.time,this.duration);
      }
   }
}
