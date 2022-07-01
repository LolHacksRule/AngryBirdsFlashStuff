package §1" §
{
   import §,!g§.§>7§;
   import §]§.§`!7§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §^"&§ extends §`!7§ implements §4!x§
   {
       
      
      private var §,<§:Point;
      
      private var §9J§:§#!j§;
      
      public function §^"&§(param1:§#!j§)
      {
         this.§,<§ = new Point();
         super(param1.§0"!§.§0z§);
         this.§9J§ = param1;
      }
      
      public function initialize() : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §;!;§(true);
         this.§9J§.§0"!§.§0z§.objects.setGroundTextureEnabled(false);
         §>7§.§];§(true);
         addEventListeners();
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §%-§() : Point
      {
         return this.§,<§;
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_DOWN));
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         super.handleMouseMove(param1,param2);
         if(this.§,<§ == null)
         {
            this.§,<§ = new Point(param1,param2);
         }
         else
         {
            this.§,<§.setTo(param1,param2);
         }
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
   }
}
