package §%r§
{
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   
   public class §,!b§
   {
      
      public static const §;P§:String = "setreferencesize";
      
      public static const §,!#§:String = "createsprite";
      
      public static const §,+§:String = "scroll";
      
      public static const §10§:String = "zoom";
      
      public static const §-J§:String = "playsound";
      
      public static const §#!&§:String = "fitwidth";
      
      public static const §]K§:String = "fitheight";
      
      public static const §6b§:String = "set_bg_colour";
      
      public static const §1d§:String = "end";
       
      
      private var §28§:Number;
      
      private var §<N§:Number;
      
      public function §,!b§(param1:Number, param2:Number)
      {
         super();
         this.§28§ = param1;
         this.§<N§ = param2;
         if(isNaN(this.§<N§))
         {
            this.§<N§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§28§;
      }
      
      public function get duration() : Number
      {
         return this.§<N§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,!b§
      {
         return new §,!b§(this.time,this.duration);
      }
   }
}
