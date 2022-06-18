package §<#S§
{
   import §!6§.Sprite;
   import §9#^§.§"$ §;
   import §9#^§.§5!r§;
   import §9#^§.§`!h§;
   import §>"9§.§[#%§;
   
   class §9H§
   {
      
      public static var §6#m§:String = "layerAnimationSoundChannel";
       
      
      private var §""5§:String;
      
      private var §6"Q§:Boolean;
      
      private var §!#J§:String;
      
      private var §6%§:Boolean;
      
      private var §0!3§:Number;
      
      protected var § U§:Sprite;
      
      protected var mTween:Function;
      
      private var §6#9§:Boolean = true;
      
      function §9H§(param1:Sprite, param2:String, param3:String, param4:String, param5:Number, param6:Boolean)
      {
         super();
         if(this["constructor"] == §9H§)
         {
            throw new Error("this is abstract class");
         }
         this.§ U§ = param1;
         this.§""5§ = param2;
         this.§!#J§ = param4;
         this.§6%§ = param6;
         this.§0!3§ = !!param5 ? Number(param5) : Number(-1);
         if(param3)
         {
            this.mTween = this.§]$?§(param3);
         }
         if(§[#%§.§<"!§(§6#m§) == null)
         {
            §[#%§.§8!3§(§6#m§,5,0.8);
         }
      }
      
      private function §]$?§(param1:String) : Function
      {
         var _loc2_:Function = §`!h§.§`N§;
         switch(param1)
         {
            case "QuadraticIn":
               _loc2_ = §"$ §.easeIn;
               break;
            case "QuadraticOut":
               _loc2_ = §"$ §.easeOut;
               break;
            case "QuadraticInOut":
               _loc2_ = §"$ §.easeInOut;
               break;
            case "CubicIn":
               _loc2_ = §5!r§.easeIn;
               break;
            case "CubicOut":
               _loc2_ = §5!r§.easeOut;
               break;
            case "CubicInOut":
               _loc2_ = §5!r§.easeInOut;
         }
         return _loc2_;
      }
      
      final function start() : void
      {
         this.§6"Q§ = true;
         if(this.§!#J§)
         {
            §[#%§.§!"0§(this.§!#J§,§6#m§,!!this.§6%§ ? int(int.MAX_VALUE - 1) : 0,this.§0!3§);
         }
         this.onStart();
      }
      
      final function update(param1:int) : void
      {
         if(this.§6#9§)
         {
            this.§6#9§ = false;
            if(this.§""5§.length == 0)
            {
               this.start();
            }
         }
         if(this.§6"Q§)
         {
            this.onUpdate(param1);
         }
      }
      
      final function get §""r§() : String
      {
         return this.§""5§;
      }
      
      final function §="+§() : Boolean
      {
         return this.§6"Q§;
      }
      
      protected final function §%#_§() : void
      {
         this.§6"Q§ = false;
      }
      
      protected function onStart() : void
      {
      }
      
      protected function onUpdate(param1:int) : void
      {
      }
   }
}
