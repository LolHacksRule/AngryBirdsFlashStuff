package §8$1§
{
   import § §.§%!h§;
   import § §.§4"z§;
   import § §.§7#L§;
   import §8§.§#$+§;
   import §9$§.Sprite;
   
   class §[!R§
   {
      
      public static var §'s§:String = "layerAnimationSoundChannel";
       
      
      private var §]"$§:String;
      
      private var §?#H§:Boolean;
      
      private var §&#O§:String;
      
      protected var §]Y§:Sprite;
      
      protected var §-c§:Function;
      
      private var §58§:Boolean = true;
      
      function §[!R§(param1:Sprite, param2:String, param3:String, param4:String)
      {
         super();
         if(this["constructor"] == §[!R§)
         {
            throw new Error("this is abstract class");
         }
         this.§]Y§ = param1;
         this.§]"$§ = param2;
         this.§&#O§ = param4;
         this.§-c§ = this.§]W§(param3);
         if(§#$+§.§#!C§(§'s§) == null)
         {
            §#$+§.§9"]§(§'s§,5,1);
         }
      }
      
      private function §]W§(param1:String) : Function
      {
         var _loc2_:Function = §%!h§.§]"`§;
         switch(param1)
         {
            case "QuadraticIn":
               _loc2_ = §7#L§.easeIn;
               break;
            case "QuadraticOut":
               _loc2_ = §7#L§.easeOut;
               break;
            case "QuadraticInOut":
               _loc2_ = §7#L§.easeInOut;
               break;
            case "CubicIn":
               _loc2_ = §4"z§.easeIn;
               break;
            case "CubicOut":
               _loc2_ = §4"z§.easeOut;
               break;
            case "CubicInOut":
               _loc2_ = §4"z§.easeInOut;
         }
         return _loc2_;
      }
      
      final function start() : void
      {
         this.§?#H§ = true;
         if(this.§&#O§)
         {
            §#$+§.§=#P§(this.§&#O§);
         }
         this.onStart();
      }
      
      final function update(param1:int) : void
      {
         if(this.§58§)
         {
            this.§58§ = false;
            if(this.§]"$§.length == 0)
            {
               this.start();
            }
         }
         if(this.§?#H§)
         {
            this.onUpdate(param1);
         }
      }
      
      final function get §4"v§() : String
      {
         return this.§]"$§;
      }
      
      final function §!f§() : Boolean
      {
         return this.§?#H§;
      }
      
      protected final function §]$8§() : void
      {
         this.§?#H§ = false;
      }
      
      protected function onStart() : void
      {
      }
      
      protected function onUpdate(param1:int) : void
      {
      }
   }
}
