package §]"r§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.strings.§2!Q§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class § k§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §&"_§:Boolean = false;
      
      private var §,!U§:Rectangle;
      
      private var §[![§:DConsole;
      
      public function § k§(param1:DConsole)
      {
         super();
         this.§[![§ = param1;
         doubleClickEnabled = true;
         tabEnabled = false;
         addEventListener(MouseEvent.ROLL_OVER,this.§!!§);
         addEventListener(MouseEvent.ROLL_OUT,this.§3"§);
         addEventListener(MouseEvent.MOUSE_OVER,this.§!!8§);
         addEventListener(MouseEvent.MOUSE_OUT,this.§3"d§);
         alpha = 0;
         param1.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
      }
      
      private function §3"d§(param1:MouseEvent) : void
      {
         this.§[![§.§]"z§.§#!"§(§""A§.§'N§);
      }
      
      private function §!!8§(param1:MouseEvent) : void
      {
         this.§[![§.§]"z§.§#!"§(§""A§.§1!$§,§2!Q§.§&#"§.get(§2!Q§.§&#"§.§"!m§),this);
      }
      
      private function §3"§(param1:MouseEvent) : void
      {
         if(this.§<p§)
         {
            return;
         }
         alpha = 0;
         Mouse.cursor = MouseCursor.AUTO;
      }
      
      private function §!!§(param1:MouseEvent) : void
      {
         alpha = 1;
         Mouse.cursor = MouseCursor.HAND;
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         this.§,!U§ = param1;
         graphics.clear();
         x = param1.x;
         y = param1.y;
         graphics.beginFill(§?#O§.§,"-§,1);
         var _loc2_:Number = §>"!§.§6R§ / 2;
         graphics.drawRect(0,0,param1.width,_loc2_);
         graphics.endFill();
         graphics.lineStyle(0,§?#O§.§+?§);
         graphics.moveTo(3,_loc2_ / 2);
         graphics.lineTo(param1.width - 3,_loc2_ / 2);
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         graphics.clear();
         x = this.§,!U§.x;
         y = this.§,!U§.y;
         graphics.beginFill(§?#O§.§,"-§,1);
         var _loc2_:Number = §>"!§.§6R§ / 2;
         graphics.drawRect(0,0,this.§,!U§.width,_loc2_);
         graphics.endFill();
         graphics.lineStyle(0,§?#O§.§+?§);
         graphics.moveTo(3,_loc2_ / 2);
         graphics.lineTo(this.§,!U§.width - 3,_loc2_ / 2);
      }
      
      public function get rect() : Rectangle
      {
         return getRect(parent);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get §<p§() : Boolean
      {
         return this.§&"_§;
      }
      
      public function set §<p§(param1:Boolean) : void
      {
         this.§&"_§ = param1;
         if(param1)
         {
            alpha = 1;
         }
         else
         {
            alpha = 0;
         }
      }
   }
}
