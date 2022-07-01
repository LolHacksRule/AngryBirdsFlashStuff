package §4u§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §<!L§
   {
      
      public static const §&"§:Boolean = true;
      
      public static const §[!D§:Boolean = true;
      
      public static const §1"4§:int = 0;
      
      public static const §<!x§:int = 1;
      
      public static const §&d§:int = 500;
      
      private static var §`!'§:Array = null;
      
      private static var §;!#§:Number = 0;
      
      public static var §!A§:int = Keyboard.F1;
      
      public static var §&!V§:int = Keyboard.F3;
      
      public static var §7q§:int = Keyboard.F2;
      
      public static var §'!<§:int = Keyboard.F4;
      
      public static var §[>§:Boolean = false;
      
      public static var §0!K§:Sprite = null;
      
      private static var §?7§:TextField = null;
      
      private static var §>!W§:TextField = null;
      
      private static var §;z§:TextField = null;
      
      private static var §2!D§:TextField = null;
      
      public static var § !M§:int = -1;
      
      public static var §'g§:String = "version: Unknown";
      
      public static var §8?§:String = "";
      
      {
         init();
      }
      
      public function §<!L§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§&"§)
         {
            return;
         }
         §`!'§ = new Array(§&d§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§&"§)
         {
            _loc3_ = §;!#§++ % §&d§;
            §`!'§[_loc3_] = [param1,param2];
            if(param2 == § !M§ || § !M§ < 0)
            {
               §+!;§();
            }
         }
         if(§[!D§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §1!J§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §+!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§&"§)
         {
            return;
         }
         if(§0!K§ && §0!K§.visible)
         {
            if(§ !M§ < 0)
            {
               §;z§.text = "Current channel: ALL";
            }
            else
            {
               §;z§.text = "Current channel: " + § !M§;
            }
            if(§'g§ != null)
            {
               §2!D§.text = §'g§;
            }
            _loc1_ = true;
            if(§?7§.scrollV != §?7§.numLines - int(§?7§.height / (§?7§.textHeight / §?7§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §&d§)
            {
               _loc4_ = (§;!#§ + _loc3_ + 1) % 500;
               if(§`!'§[_loc4_] != null)
               {
                  if(§ !M§ < 0 || §`!'§[_loc4_][1] == § !M§)
                  {
                     _loc2_ += §`!'§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §?7§.text = _loc2_;
            if(_loc1_)
            {
               §?7§.scrollV = §?7§.numLines;
            }
         }
      }
      
      public static function §#z§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§&"§)
         {
            return;
         }
         §0!K§ = new Sprite();
         §0!K§.visible = false;
         param1.addChild(§0!K§);
         var _loc7_:Graphics;
         (_loc7_ = §0!K§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §?7§ = new TextField();
         §?7§.width = param4;
         §?7§.height = param5 - 40;
         §?7§.x = param2;
         §?7§.y = param3 + 40;
         §?7§.wordWrap = true;
         §0!K§.addChild(§?7§);
         §>!W§ = new TextField();
         §>!W§.x = param2 + param4 / 2;
         §>!W§.y = param3;
         §>!W§.width = param4 / 2;
         §>!W§.height = 20;
         §>!W§.text = "LOGGER CAPTURING INPUT, F4";
         §>!W§.border = true;
         §>!W§.borderColor = 16711680;
         §0!K§.addChild(§>!W§);
         §;z§ = new TextField();
         §;z§.width = param4;
         §;z§.height = 20;
         §;z§.x = param2;
         §;z§.y = param3;
         §0!K§.addChild(§;z§);
         §2!D§ = new TextField();
         §2!D§.width = param4;
         §2!D§.height = 20;
         §2!D§.x = param2;
         §2!D§.y = param3 + 20;
         §0!K§.addChild(§2!D§);
         §@v§(§[>§);
         if(param6 >= 0)
         {
            param1.addChildAt(§0!K§,param6);
         }
         else
         {
            param1.addChild(§0!K§);
         }
      }
      
      public static function §@v§(param1:Boolean) : void
      {
         if(!§&"§)
         {
            return;
         }
         §[>§ = param1;
         §0!K§.mouseChildren = §[>§;
         §0!K§.mouseEnabled = §[>§;
         §;z§.mouseEnabled = §[>§;
         §2!D§.mouseEnabled = §[>§;
         §?7§.mouseEnabled = §[>§;
         §>!W§.visible = §[>§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§&"§)
         {
            return;
         }
      }
      
      public static function §%^§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §!A§ = param1;
         §7q§ = param2;
         §&!V§ = param3;
      }
      
      public static function §'!Q§(param1:String) : void
      {
         §'g§ = param1;
      }
   }
}
