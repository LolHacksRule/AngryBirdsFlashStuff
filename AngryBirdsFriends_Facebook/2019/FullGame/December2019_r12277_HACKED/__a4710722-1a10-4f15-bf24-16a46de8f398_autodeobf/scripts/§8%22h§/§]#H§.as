package §8"h§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §0r§.§3#G§;
   import §0r§.§7$-§;
   import §0r§.§[!K§;
   
   class §]#H§
   {
      
      public static var §=!q§:String = "layerAnimationSoundChannel";
       
      
      private var §&#'§:String;
      
      private var §]"4§:Boolean;
      
      private var §#!7§:String;
      
      private var §6b§:Boolean;
      
      private var §3!J§:Number;
      
      protected var §]#+§:Sprite;
      
      protected var mTween:Function;
      
      private var §+$A§:Boolean = true;
      
      function §]#H§(param1:Sprite, param2:String, param3:String, param4:String, param5:Number, param6:Boolean)
      {
         super();
         if(this["constructor"] == §]#H§)
         {
            throw new Error("this is abstract class");
         }
         this.§]#+§ = param1;
         this.§&#'§ = param2;
         this.§#!7§ = param4;
         this.§6b§ = param6;
         this.§3!J§ = !!param5 ? Number(param5) : Number(-1);
         if(param3)
         {
            this.mTween = this.§!!L§(param3);
         }
         if(§4$4§.§`!U§(§=!q§) == null)
         {
            §4$4§.§<!A§(§=!q§,5,0.8);
         }
      }
      
      private function §!!L§(param1:String) : Function
      {
         var _loc2_:Function = §7$-§.§]!`§;
         switch(param1)
         {
            case "QuadraticIn":
               _loc2_ = §3#G§.easeIn;
               break;
            case "QuadraticOut":
               _loc2_ = §3#G§.easeOut;
               break;
            case "QuadraticInOut":
               _loc2_ = §3#G§.easeInOut;
               break;
            case "CubicIn":
               _loc2_ = §[!K§.easeIn;
               break;
            case "CubicOut":
               _loc2_ = §[!K§.easeOut;
               break;
            case "CubicInOut":
               _loc2_ = §[!K§.easeInOut;
         }
         return _loc2_;
      }
      
      final function start() : void
      {
         this.§]"4§ = true;
         if(this.§#!7§)
         {
            §4$4§.§'"j§(this.§#!7§,§=!q§,!!this.§6b§ ? int(int.MAX_VALUE - 1) : 0,this.§3!J§);
         }
         this.onStart();
      }
      
      final function update(param1:int) : void
      {
         if(this.§+$A§)
         {
            this.§+$A§ = false;
            if(this.§&#'§.length == 0)
            {
               this.start();
            }
         }
         if(this.§]"4§)
         {
            this.onUpdate(param1);
         }
      }
      
      final function get §>!T§() : String
      {
         return this.§&#'§;
      }
      
      final function §'"-§() : Boolean
      {
         return this.§]"4§;
      }
      
      protected final function §8"%§() : void
      {
         this.§]"4§ = false;
      }
      
      protected function onStart() : void
      {
      }
      
      protected function onUpdate(param1:int) : void
      {
      }
   }
}
