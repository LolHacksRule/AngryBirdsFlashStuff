package §6§#9
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §%I§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §4N§:TextField;
      
      private var _rect:Rectangle;
      
      private var §#L§:§!!%§;
      
      public function §%I§(param1:§!!%§)
      {
         this.§4N§ = new TextField();
         super();
         this.§#L§ = param1;
         this.§4N§.height = §>"!§.§6R§;
         this.§4N§.selectable = this.§4N§.mouseEnabled = false;
         this.§4N§.defaultTextFormat = §6!x§.§'#N§;
         this.§4N§.embedFonts = true;
         this.§4N§.textColor = §?#O§.§;!e§;
         this.§4N§.text = "Doomsday Console II";
         this.§4N§.x = this.§4N§.y = 1;
         addChild(this.§4N§);
         this.§#L§.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
      }
      
      public function §>"x§(param1:String) : void
      {
         this.§4N§.text = param1;
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         this._rect = param1;
         graphics.clear();
         graphics.beginFill(§?#O§.§'!N§);
         graphics.drawRect(0,0,this._rect.width,§>"!§.§6R§);
         graphics.endFill();
         this.§4N§.width = param1.width;
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         this.§4N§.textColor = §?#O§.§;!e§;
         graphics.clear();
         graphics.beginFill(§?#O§.§'!N§);
         graphics.drawRect(0,0,this._rect.width,§>"!§.§6R§);
         graphics.endFill();
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get rect() : Rectangle
      {
         return getRect(this);
      }
   }
}
