package §]"r§
{
   import §!!c§.§]# §;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.core.style.§7"h§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §[O§ extends Sprite implements §]# §
   {
      
      public static const §;# §:int = 0;
      
      public static const §const§:int = 1;
       
      
      private var §0"0§:int;
      
      public var §`!S§:Number = 4;
      
      public var §1o§:Number = 4;
      
      public var §^h§:Number;
      
      private var length:Number = 0;
      
      public var §[-§:Number = 0;
      
      private var §14§:Number = 0;
      
      private var §+!d§:Number;
      
      private var § #3§:uint;
      
      public var §&!F§:Boolean = true;
      
      private var §>6§:uint = 0;
      
      public function §[O§(param1:int)
      {
         this.§^h§ = this.§1o§;
         this.§ #3§ = §?#O§.§;"5§;
         super();
         this.§0"0§ = param1;
         buttonMode = true;
         addEventListener(MouseEvent.MOUSE_DOWN,this.startDragging);
      }
      
      private function startDragging(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<j§);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
         if(this.§&!F§)
         {
            this.§+!d§ = mouseY;
         }
         switch(this.§0"0§)
         {
            case §;# §:
               this.§14§ = mouseY - this.§+!d§;
               break;
            case §const§:
               this.§14§ = mouseX - this.§+!d§;
         }
         this.§<j§();
      }
      
      private function stopDragging(param1:MouseEvent) : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<j§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
      }
      
      private function §<j§(param1:MouseEvent = null) : void
      {
         switch(this.§0"0§)
         {
            case §;# §:
               this.§[-§ = Math.max(0,Math.min(1,(mouseY - this.§14§) / (this.length - this.§1o§)));
               break;
            case §const§:
               this.§[-§ = Math.max(0,Math.min(1,(mouseX - this.§14§) / (this.length - this.§1o§)));
         }
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function draw(param1:Number, param2:Number, param3:Number) : void
      {
         this.length = param1;
         graphics.clear();
         graphics.beginFill(§?#O§.§=m§);
         param2 = Math.min(param3,param2);
         switch(this.§0"0§)
         {
            case §;# §:
               this.§1o§ = this.§^h§;
               this.§+!d§ = param2 / param3 * (param1 - this.§1o§);
               graphics.drawRect(0,0,this.§`!S§,param1);
               graphics.beginFill(§?#O§.§;"5§);
               graphics.drawRect(0,this.§+!d§,this.§`!S§,this.§1o§);
               break;
            case §const§:
               this.§1o§ = this.§^h§;
               this.§+!d§ = param2 / param3 * param1;
               graphics.drawRect(0,0,param1,this.§`!S§);
               graphics.beginFill(§?#O§.§;"5§);
               graphics.drawRect(this.§+!d§,0,this.§1o§,this.§`!S§);
         }
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:§7"h§ = §7"h§(param1.§@Z§);
      }
   }
}
