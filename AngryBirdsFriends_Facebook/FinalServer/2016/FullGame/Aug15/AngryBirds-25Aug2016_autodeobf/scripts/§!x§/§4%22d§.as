package §!x§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §4"d§
   {
      
      public static const §>U§:Boolean = true;
      
      public static const §="9§:Boolean = true;
      
      public static const §1#0§:int = 0;
      
      public static const §'#c§:int = 1;
      
      public static const §6;§:int = 500;
      
      private static var §>!Z§:Array = null;
      
      private static var §&#$§:Number = 0;
      
      public static var §%!E§:int = Keyboard.F1;
      
      public static var §"#;§:int = Keyboard.F3;
      
      public static var §1"<§:int = Keyboard.F2;
      
      public static var §1!7§:int = Keyboard.F4;
      
      public static var §,"v§:Boolean = false;
      
      public static var §6#m§:Sprite = null;
      
      private static var §"!?§:TextField = null;
      
      private static var §6"m§:TextField = null;
      
      private static var §<"F§:TextField = null;
      
      private static var § $5§:TextField = null;
      
      public static var §5#T§:int = -1;
      
      public static var §>#k§:String = "version: Unknown";
      
      public static var §=!T§:String = "";
      
      {
         init();
      }
      
      public function §4"d§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§>U§)
         {
            return;
         }
         §>!Z§ = new Array(§6;§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§>U§)
         {
            _loc3_ = §&#$§++ % §6;§;
            §>!Z§[_loc3_] = [param1,param2];
            if(param2 == §5#T§ || §5#T§ < 0)
            {
               §%"n§();
            }
         }
         if(§="9§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §=V§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §%"n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§>U§)
         {
            return;
         }
         if(§6#m§ && §6#m§.visible)
         {
            if(§5#T§ < 0)
            {
               §<"F§.text = "Current channel: ALL";
            }
            else
            {
               §<"F§.text = "Current channel: " + §5#T§;
            }
            if(§>#k§ != null)
            {
               § $5§.text = §>#k§;
            }
            _loc1_ = true;
            if(§"!?§.scrollV != §"!?§.numLines - int(§"!?§.height / (§"!?§.textHeight / §"!?§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §6;§)
            {
               _loc4_ = (§&#$§ + _loc3_ + 1) % 500;
               if(§>!Z§[_loc4_] != null)
               {
                  if(§5#T§ < 0 || §>!Z§[_loc4_][1] == §5#T§)
                  {
                     _loc2_ += §>!Z§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §"!?§.text = _loc2_;
            if(_loc1_)
            {
               §"!?§.scrollV = §"!?§.numLines;
            }
         }
      }
      
      public static function §["X§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§>U§)
         {
            return;
         }
         §6#m§ = new Sprite();
         §6#m§.visible = false;
         param1.addChild(§6#m§);
         var _loc7_:Graphics;
         (_loc7_ = §6#m§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §"!?§ = new TextField();
         §"!?§.width = param4;
         §"!?§.height = param5 - 40;
         §"!?§.x = param2;
         §"!?§.y = param3 + 40;
         §"!?§.wordWrap = true;
         §6#m§.addChild(§"!?§);
         §6"m§ = new TextField();
         §6"m§.x = param2 + param4 / 2;
         §6"m§.y = param3;
         §6"m§.width = param4 / 2;
         §6"m§.height = 20;
         §6"m§.text = "LOGGER CAPTURING INPUT, F4";
         §6"m§.border = true;
         §6"m§.borderColor = 16711680;
         §6#m§.addChild(§6"m§);
         §<"F§ = new TextField();
         §<"F§.width = param4;
         §<"F§.height = 20;
         §<"F§.x = param2;
         §<"F§.y = param3;
         §6#m§.addChild(§<"F§);
         § $5§ = new TextField();
         § $5§.width = param4;
         § $5§.height = 20;
         § $5§.x = param2;
         § $5§.y = param3 + 20;
         §6#m§.addChild(§ $5§);
         §]"b§(§,"v§);
         if(param6 >= 0)
         {
            param1.addChildAt(§6#m§,param6);
         }
         else
         {
            param1.addChild(§6#m§);
         }
      }
      
      public static function §]"b§(param1:Boolean) : void
      {
         if(!§>U§)
         {
            return;
         }
         §,"v§ = param1;
         §6#m§.mouseChildren = §,"v§;
         §6#m§.mouseEnabled = §,"v§;
         §<"F§.mouseEnabled = §,"v§;
         § $5§.mouseEnabled = §,"v§;
         §"!?§.mouseEnabled = §,"v§;
         §6"m§.visible = §,"v§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§>U§)
         {
            return;
         }
      }
      
      public static function §,"6§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §%!E§ = param1;
         §1"<§ = param2;
         §"#;§ = param3;
      }
      
      public static function §<!R§(param1:String) : void
      {
         §>#k§ = param1;
      }
   }
}
