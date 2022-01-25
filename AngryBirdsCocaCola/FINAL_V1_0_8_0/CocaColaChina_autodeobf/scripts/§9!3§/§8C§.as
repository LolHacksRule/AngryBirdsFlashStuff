package §9!3§
{
   import §&!9§.Sprite;
   import §48§.§4a§;
   
   public class §8C§
   {
      
      public static const §`K§:String = "setreferencesize";
      
      public static const §#9§:String = "createsprite";
      
      public static const §8!9§:String = "scroll";
      
      public static const §0!U§:String = "zoom";
      
      public static const §%[§:String = "playsound";
      
      public static const §?w§:String = "fitwidth";
      
      public static const §9!J§:String = "fitheight";
      
      public static const §"!&§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §]L§:Number;
      
      private var §;!H§:Number;
      
      public function §8C§(param1:Number, param2:Number)
      {
         super();
         this.§]L§ = param1;
         this.§;!H§ = param2;
         if(isNaN(this.§;!H§))
         {
            this.§;!H§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§]L§;
      }
      
      public function get duration() : Number
      {
         return this.§;!H§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§4a§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §8C§
      {
         return new §8C§(this.time,this.duration);
      }
   }
}
