package §7g§
{
   import §+!J§.§""A§;
   import §1"b§.§>l§;
   import §]"r§.§@D§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §0"a§ extends Sprite
   {
       
      
      private var _name:String;
      
      private var §=§:TextField;
      
      private var §=!l§:Boolean;
      
      private var §5"d§:§>l§;
      
      public function §0"a§(param1:§!!%§, param2:String)
      {
         super();
         this.§5"d§ = param1.§]"z§;
         buttonMode = true;
         this._name = param2;
         this.§=§ = §@D§.§3!x§(param2);
         this.§=§.mouseEnabled = false;
         this.§=§.autoSize = TextFieldAutoSize.LEFT;
         addChild(this.§=§);
         this.active = false;
         addEventListener(MouseEvent.CLICK,this.§^!R§,false,0,true);
      }
      
      public function §5p§() : void
      {
         this.active = this.§=!l§;
      }
      
      private function §^!R§(param1:MouseEvent) : void
      {
         this.§5"d§.§#!"§(§""A§.§+!K§,this._name,this);
      }
      
      public function set active(param1:Boolean) : void
      {
         this.§=!l§ = param1;
         graphics.clear();
         if(!this.§=!l§)
         {
            graphics.lineStyle(0,§?#O§.§&#,§);
            graphics.beginFill(§?#O§.§,1§);
            this.§=§.textColor = §?#O§.§?"F§;
         }
         else
         {
            graphics.lineStyle(0,§?#O§.§&#,§);
            graphics.beginFill(§?#O§.§9>§);
            this.§=§.textColor = §?#O§.§,"Q§;
         }
         graphics.drawRect(0,0,this.§=§.textWidth + 4,§>"!§.§6R§);
         graphics.endFill();
      }
      
      public function get active() : Boolean
      {
         return this.§=!l§;
      }
      
      public function get §[!_§() : String
      {
         return this._name;
      }
   }
}
