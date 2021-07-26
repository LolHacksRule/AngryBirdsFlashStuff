package §@#b§
{
   import §,#e§.Sprite;
   import §3"V§.§ b§;
   import §=J§.§#"l§;
   import §=J§.§&P§;
   import §=J§.§4#"§;
   
   class §6$,§
   {
      
      public static var §%#0§:String = "layerAnimationSoundChannel";
       
      
      private var §&W§:String;
      
      private var §?G§:Boolean;
      
      private var § " §:String;
      
      private var §<"j§:Boolean;
      
      private var §%%§:Number;
      
      protected var §&"h§:Sprite;
      
      protected var mTween:Function;
      
      private var §#$%§:Boolean = true;
      
      function §6$,§(param1:Sprite, param2:String, param3:String, param4:String, param5:Number, param6:Boolean)
      {
         super();
         if(this["constructor"] == §6$,§)
         {
            throw new Error("this is abstract class");
         }
         this.§&"h§ = param1;
         this.§&W§ = param2;
         this.§ " § = param4;
         this.§<"j§ = param6;
         this.§%%§ = !!param5 ? Number(param5) : Number(-1);
         if(param3)
         {
            this.mTween = this.§8s§(param3);
         }
         if(§ b§.§]!L§(§%#0§) == null)
         {
            § b§.§%#C§(§%#0§,5,0.8);
         }
      }
      
      private function §8s§(param1:String) : Function
      {
         var _loc2_:Function = §&P§.§9u§;
         switch(param1)
         {
            case "QuadraticIn":
               _loc2_ = §4#"§.easeIn;
               break;
            case "QuadraticOut":
               _loc2_ = §4#"§.easeOut;
               break;
            case "QuadraticInOut":
               _loc2_ = §4#"§.easeInOut;
               break;
            case "CubicIn":
               _loc2_ = §#"l§.easeIn;
               break;
            case "CubicOut":
               _loc2_ = §#"l§.easeOut;
               break;
            case "CubicInOut":
               _loc2_ = §#"l§.easeInOut;
         }
         return _loc2_;
      }
      
      final function start() : void
      {
         this.§?G§ = true;
         if(this.§ " §)
         {
            § b§.§^"8§(this.§ " §,§%#0§,!!this.§<"j§ ? int(int.MAX_VALUE - 1) : 0,this.§%%§);
         }
         this.onStart();
      }
      
      final function update(param1:int) : void
      {
         if(this.§#$%§)
         {
            this.§#$%§ = false;
            if(this.§&W§.length == 0)
            {
               this.start();
            }
         }
         if(this.§?G§)
         {
            this.onUpdate(param1);
         }
      }
      
      final function get §%!j§() : String
      {
         return this.§&W§;
      }
      
      final function §62§() : Boolean
      {
         return this.§?G§;
      }
      
      protected final function §+$D§() : void
      {
         this.§?G§ = false;
      }
      
      protected function onStart() : void
      {
      }
      
      protected function onUpdate(param1:int) : void
      {
      }
   }
}
