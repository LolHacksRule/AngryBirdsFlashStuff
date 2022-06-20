package §]#m§
{
   import §&!v§.Sprite;
   import §1#W§.§!#&§;
   import §2`§.§!!,§;
   import §2`§.§<"I§;
   import §2`§.§^!;§;
   
   class § "!§
   {
      
      public static var §="n§:String = "layerAnimationSoundChannel";
       
      
      private var §7k§:String;
      
      private var §[6§:Boolean;
      
      private var §5!U§:String;
      
      protected var §'$&§:Sprite;
      
      protected var §>"n§:Function;
      
      private var §8"c§:Boolean = true;
      
      function § "!§(param1:Sprite, param2:String, param3:String, param4:String)
      {
         super();
         if(this["constructor"] == § "!§)
         {
            throw new Error("this is abstract class");
         }
         this.§'$&§ = param1;
         this.§7k§ = param2;
         this.§5!U§ = param4;
         this.§>"n§ = this.§-$!§(param3);
         if(§!#&§.§3!c§(§="n§) == null)
         {
            §!#&§.§!"k§(§="n§,5,1);
         }
      }
      
      private function §-$!§(param1:String) : Function
      {
         var _loc2_:Function = §^!;§.§2!`§;
         switch(param1)
         {
            case "QuadraticIn":
               _loc2_ = §<"I§.easeIn;
               break;
            case "QuadraticOut":
               _loc2_ = §<"I§.easeOut;
               break;
            case "QuadraticInOut":
               _loc2_ = §<"I§.easeInOut;
               break;
            case "CubicIn":
               _loc2_ = §!!,§.easeIn;
               break;
            case "CubicOut":
               _loc2_ = §!!,§.easeOut;
               break;
            case "CubicInOut":
               _loc2_ = §!!,§.easeInOut;
         }
         return _loc2_;
      }
      
      final function start() : void
      {
         this.§[6§ = true;
         if(this.§5!U§)
         {
            §!#&§.§2!A§(this.§5!U§);
         }
         this.onStart();
      }
      
      final function update(param1:int) : void
      {
         if(this.§8"c§)
         {
            this.§8"c§ = false;
            if(this.§7k§.length == 0)
            {
               this.start();
            }
         }
         if(this.§[6§)
         {
            this.onUpdate(param1);
         }
      }
      
      final function get §&$5§() : String
      {
         return this.§7k§;
      }
      
      final function §'!D§() : Boolean
      {
         return this.§[6§;
      }
      
      protected final function §3"-§() : void
      {
         this.§[6§ = false;
      }
      
      protected function onStart() : void
      {
      }
      
      protected function onUpdate(param1:int) : void
      {
      }
   }
}
