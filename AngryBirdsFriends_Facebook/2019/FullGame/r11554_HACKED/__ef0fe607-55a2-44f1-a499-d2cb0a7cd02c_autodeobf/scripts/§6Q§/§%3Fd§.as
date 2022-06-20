package §6Q§
{
   import §!6§.Sprite;
   import §^"[§.§=#;§;
   
   public class §?d§
   {
      
      public static const §9U§:String = "setreferencesize";
      
      public static const §8"P§:String = "createsprite";
      
      public static const §?"j§:String = "scroll";
      
      public static const §>"+§:String = "zoom";
      
      public static const §4"=§:String = "playsound";
      
      public static const §"#?§:String = "fitwidth";
      
      public static const §%#o§:String = "fitheight";
      
      public static const §'$=§:String = "set_bg_colour";
      
      public static const §3# §:String = "end";
       
      
      private var §7#U§:Number;
      
      private var §+"]§:Number;
      
      public function §?d§(param1:Number, param2:Number)
      {
         super();
         this.§7#U§ = param1;
         this.§+"]§ = param2;
         if(isNaN(this.§+"]§))
         {
            this.§+"]§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§7#U§;
      }
      
      public function get duration() : Number
      {
         return this.§+"]§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§=#;§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §?d§
      {
         return new §?d§(this.time,this.duration);
      }
   }
}
