package §-"?§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §+!8§ implements §3S§
   {
      
      private static var §7#9§:Shape = new Shape();
       
      
      private var § J§:Object;
      
      private var §=s§:String;
      
      private var §[!c§:Number;
      
      private var §;"d§:Number;
      
      private var §'!^§:Number;
      
      private var §2"o§:Number;
      
      private var §&N§:Function;
      
      public function §+!8§(param1:Object, param2:String, param3:Number, param4:Number, param5:Function)
      {
         super();
         this.§&N§ = param5;
         this.§;"d§ = param4;
         this.§[!c§ = param3;
         this.§=s§ = param2;
         this.§ J§ = param1;
         this.§2"o§ = this.§ J§[this.§=s§];
         this.§'!^§ = getTimer();
         §7#9§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = (getTimer() - this.§'!^§) * 0.001;
         var _loc3_:Number = _loc2_ / this.§;"d§;
         this.§ J§[this.§=s§] = this.§2"o§ + (this.§[!c§ - this.§2"o§) * Math.sin(_loc3_ * 1.55);
         if(_loc2_ >= this.§;"d§)
         {
            this.stop();
            this.§ J§[this.§=s§] = this.§[!c§;
            this.§&N§();
         }
      }
      
      public function stop() : void
      {
         §7#9§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §4"u§.§'"5§(this);
      }
      
      public function get §!#]§() : Object
      {
         return this.§ J§;
      }
      
      public function set §!#]§(param1:Object) : void
      {
         this.§ J§ = param1;
      }
   }
}
