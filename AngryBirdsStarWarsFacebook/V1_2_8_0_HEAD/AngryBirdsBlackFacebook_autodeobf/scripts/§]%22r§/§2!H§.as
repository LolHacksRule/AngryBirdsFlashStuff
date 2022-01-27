package §]"r§
{
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public final class §2!H§ extends Sprite
   {
       
      
      public var title:String;
      
      private var §#!V§:TextField;
      
      public var data;
      
      public var index:int = -1;
      
      public var §+w§:Boolean;
      
      public function §2!H§(param1:String = "Blah", param2:* = null, param3:Boolean = false)
      {
         super();
         this.data = param2;
         this.§+w§ = param3;
         this.title = param1;
         this.§#!V§ = new TextField();
         addChild(this.§#!V§);
         this.§#!V§.height = §>"!§.§6R§;
         this.§#!V§.defaultTextFormat = §6!x§.§'#N§;
         this.§#!V§.embedFonts = this.§#!V§.defaultTextFormat.font.charAt(0) != "_";
         this.§#!V§.text = param1;
         this.§#!V§.mouseEnabled = false;
         this.§#!V§.y = 1;
         this.§#!V§.background = true;
         this.§#!V§.textColor = §?#O§.§8#W§;
         this.§#!V§.backgroundColor = §?#O§.§[+§;
         this.§0" § = false;
         addEventListener(MouseEvent.MOUSE_OVER,this.§!!8§);
         addEventListener(MouseEvent.MOUSE_OUT,this.§3"d§);
      }
      
      public function setWidth(param1:Number) : void
      {
         this.§#!V§.width = param1;
      }
      
      private function set §0" §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!V§.textColor = §?#O§.§?"7§;
            this.§#!V§.backgroundColor = §?#O§.§3# §;
         }
         else
         {
            this.§#!V§.textColor = §?#O§.§8#W§;
            this.§#!V§.backgroundColor = §?#O§.§[+§;
         }
      }
      
      private function §!!8§(param1:MouseEvent) : void
      {
         this.§0" § = true;
      }
      
      private function §3"d§(param1:MouseEvent) : void
      {
         this.§0" § = false;
      }
      
      public function set background(param1:Boolean) : void
      {
         this.§#!V§.background = param1;
      }
      
      public function §<!P§() : void
      {
         this.§0" § = false;
      }
   }
}
