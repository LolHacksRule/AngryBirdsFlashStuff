package §`"0§
{
   import §'G§.§3$§;
   import §6#H§.Sprite;
   
   public class §?#d§
   {
      
      public static const §2"M§:String = "setreferencesize";
      
      public static const §+"U§:String = "createsprite";
      
      public static const §`!=§:String = "scroll";
      
      public static const §[#-§:String = "zoom";
      
      public static const §<"M§:String = "playsound";
      
      public static const §,$0§:String = "fitwidth";
      
      public static const §>"V§:String = "fitheight";
      
      public static const §10§:String = "set_bg_colour";
      
      public static const §%#Z§:String = "end";
       
      
      private var §9"3§:Number;
      
      private var §,?§:Number;
      
      public function §?#d§(param1:Number, param2:Number)
      {
         super();
         this.§9"3§ = param1;
         this.§,?§ = param2;
         if(isNaN(this.§,?§))
         {
            this.§,?§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§9"3§;
      }
      
      public function get duration() : Number
      {
         return this.§,?§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§3$§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §?#d§
      {
         return new §?#d§(this.time,this.duration);
      }
   }
}
