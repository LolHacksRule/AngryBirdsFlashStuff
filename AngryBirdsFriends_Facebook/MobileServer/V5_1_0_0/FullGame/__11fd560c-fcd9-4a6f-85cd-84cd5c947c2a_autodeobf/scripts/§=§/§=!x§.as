package §=§#9
{
   import §##C§.§'!'§;
   import §##C§.§+!!§;
   import §##C§.§=i§;
   import §@!M§.§!"p§;
   import §^"S§.Sprite;
   
   class §=!x§
   {
      
      public static var §["C§:String = "layerAnimationSoundChannel";
       
      
      private var §]!z§:String;
      
      private var §-#?§:Boolean;
      
      private var §!W§:String;
      
      protected var §4"D§:Sprite;
      
      protected var mTween:Function;
      
      private var §?#K§:Boolean = true;
      
      function §=!x§(param1:Sprite, param2:String, param3:String, param4:String)
      {
         super();
         if(this["constructor"] == §=!x§)
         {
            throw new Error("this is abstract class");
         }
         this.§4"D§ = param1;
         this.§]!z§ = param2;
         this.§!W§ = param4;
         this.mTween = this.§>"1§(param3);
         if(§!"p§.§;!b§(§["C§) == null)
         {
            §!"p§.§5#4§(§["C§,5,1);
         }
      }
      
      private function §>"1§(param1:String) : Function
      {
         var _loc2_:Function = §=i§.§3!`§;
         switch(param1)
         {
            case "QuadraticIn":
               _loc2_ = §'!'§.easeIn;
               break;
            case "QuadraticOut":
               _loc2_ = §'!'§.easeOut;
               break;
            case "QuadraticInOut":
               _loc2_ = §'!'§.easeInOut;
               break;
            case "CubicIn":
               _loc2_ = §+!!§.easeIn;
               break;
            case "CubicOut":
               _loc2_ = §+!!§.easeOut;
               break;
            case "CubicInOut":
               _loc2_ = §+!!§.easeInOut;
         }
         return _loc2_;
      }
      
      final function start() : void
      {
         this.§-#?§ = true;
         if(this.§!W§)
         {
            §!"p§.§%!R§(this.§!W§);
         }
         this.onStart();
      }
      
      final function update(param1:int) : void
      {
         if(this.§?#K§)
         {
            this.§?#K§ = false;
            if(this.§]!z§.length == 0)
            {
               this.start();
            }
         }
         if(this.§-#?§)
         {
            this.onUpdate(param1);
         }
      }
      
      final function get §,#>§() : String
      {
         return this.§]!z§;
      }
      
      final function §=#0§() : Boolean
      {
         return this.§-#?§;
      }
      
      protected final function §&+§() : void
      {
         this.§-#?§ = false;
      }
      
      protected function onStart() : void
      {
      }
      
      protected function onUpdate(param1:int) : void
      {
      }
   }
}
