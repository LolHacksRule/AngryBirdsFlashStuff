package §!!P§
{
   import §-#o§.§ #w§;
   import §-#o§.§-!w§;
   import §-#o§.§>$C§;
   import §6#H§.Sprite;
   import §8#K§.§3Z§;
   
   class §4"T§
   {
      
      public static var §4h§:String = "layerAnimationSoundChannel";
       
      
      private var §1#x§:String;
      
      private var §2!h§:Boolean;
      
      private var §;! §:String;
      
      private var §?"8§:Boolean;
      
      private var §#B§:Number;
      
      protected var §'#f§:Sprite;
      
      protected var mTween:Function;
      
      private var §;#S§:Boolean = true;
      
      function §4"T§(param1:Sprite, param2:String, param3:String, param4:String, param5:Number, param6:Boolean)
      {
         super();
         if(this["constructor"] == §4"T§)
         {
            throw new Error("this is abstract class");
         }
         this.§'#f§ = param1;
         this.§1#x§ = param2;
         this.§;! § = param4;
         this.§?"8§ = param6;
         this.§#B§ = !!param5 ? Number(param5) : Number(-1);
         if(param3)
         {
            this.mTween = this.§-#b§(param3);
         }
         if(§3Z§.§["C§(§4h§) == null)
         {
            §3Z§.§'#E§(§4h§,5,0.8);
         }
      }
      
      private function §-#b§(param1:String) : Function
      {
         var _loc2_:Function = § #w§.§&"D§;
         switch(param1)
         {
            case "QuadraticIn":
               _loc2_ = §-!w§.easeIn;
               break;
            case "QuadraticOut":
               _loc2_ = §-!w§.easeOut;
               break;
            case "QuadraticInOut":
               _loc2_ = §-!w§.easeInOut;
               break;
            case "CubicIn":
               _loc2_ = §>$C§.easeIn;
               break;
            case "CubicOut":
               _loc2_ = §>$C§.easeOut;
               break;
            case "CubicInOut":
               _loc2_ = §>$C§.easeInOut;
         }
         return _loc2_;
      }
      
      final function start() : void
      {
         this.§2!h§ = true;
         if(this.§;! §)
         {
            §3Z§.§8!K§(this.§;! §,§4h§,!!this.§?"8§ ? int(int.MAX_VALUE - 1) : 0,this.§#B§);
         }
         this.onStart();
      }
      
      final function update(param1:int) : void
      {
         if(this.§;#S§)
         {
            this.§;#S§ = false;
            if(this.§1#x§.length == 0)
            {
               this.start();
            }
         }
         if(this.§2!h§)
         {
            this.onUpdate(param1);
         }
      }
      
      final function get §&#]§() : String
      {
         return this.§1#x§;
      }
      
      final function §!!A§() : Boolean
      {
         return this.§2!h§;
      }
      
      protected final function §3"G§() : void
      {
         this.§2!h§ = false;
      }
      
      protected function onStart() : void
      {
      }
      
      protected function onUpdate(param1:int) : void
      {
      }
   }
}
