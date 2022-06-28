package §9!7§
{
   import §,_§.Sprite;
   import §5`§.§?y§;
   
   public class §`E§
   {
      
      public static const §'l§:String = "setreferencesize";
      
      public static const §#r§:String = "createsprite";
      
      public static const §#p§:String = "scroll";
      
      public static const §8,§:String = "zoom";
      
      public static const §'V§:String = "playsound";
      
      public static const §-!&§:String = "fitwidth";
      
      public static const §[t§:String = "fitheight";
      
      public static const §&J§:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var §9!8§:Number;
      
      private var §@z§:Number;
      
      public function §`E§(param1:Number, param2:Number)
      {
         super();
         this.§9!8§ = param1;
         this.§@z§ = param2;
         if(isNaN(this.§@z§))
         {
            this.§@z§ = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.§9!8§;
      }
      
      public function get duration() : Number
      {
         return this.§@z§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : §`E§
      {
         return new §`E§(this.time,this.duration);
      }
   }
}
