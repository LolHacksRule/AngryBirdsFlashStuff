package §!!^§
{
   import §,!q§.Sprite;
   import §-!b§.§[E§;
   
   public class §,!@§
   {
      
      public static const §?!#§:String = "setreferencesize";
      
      public static const §8!%§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §+!e§:String = "zoom";
      
      public static const §&!f§:String = "playsound";
      
      public static const §3!Z§:String = "fitwidth";
      
      public static const §in§:String = "fitheight";
      
      public static const §]t§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §"3§:Number;
      
      private var §7l§:Number;
      
      public function §,!@§(param1:Number, param2:Number)
      {
         super();
         this.§"3§ = param1;
         this.§7l§ = param2;
         if(isNaN(this.§7l§))
         {
            this.§7l§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§"3§;
      }
      
      public function get duration() : Number
      {
         return this.§7l§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§[E§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §,!@§
      {
         return new §,!@§(this.time,this.duration);
      }
   }
}
