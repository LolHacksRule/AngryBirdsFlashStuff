package §0"I§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §5!s§
   {
      
      public static const §2"&§:Boolean = true;
      
      public static const §&"9§:Boolean = true;
      
      public static const §%a§:int = 0;
      
      public static const §%!H§:int = 1;
      
      public static const §%!M§:int = 500;
      
      private static var §-#-§:Array = null;
      
      private static var §,"§:Number = 0;
      
      public static var §3#%§:int = Keyboard.F1;
      
      public static var §5^§:int = Keyboard.F3;
      
      public static var §[p§:int = Keyboard.F2;
      
      public static var §'!h§:int = Keyboard.F4;
      
      public static var §>!u§:Boolean = false;
      
      public static var §1"8§:Sprite = null;
      
      private static var §5G§:TextField = null;
      
      private static var §;4§:TextField = null;
      
      private static var §while§:TextField = null;
      
      private static var §@#0§:TextField = null;
      
      public static var §["#§:int = -1;
      
      public static var §4w§:String = "version: Unknown";
      
      public static var §]"f§:String = "";
      
      {
         init();
      }
      
      public function §5!s§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§2"&§)
         {
            return;
         }
         §-#-§ = new Array(§%!M§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§2"&§)
         {
            _loc3_ = §,"§++ % §%!M§;
            §-#-§[_loc3_] = [param1,param2];
            if(param2 == §["#§ || §["#§ < 0)
            {
               §'!n§();
            }
         }
         if(§&"9§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §#!n§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §'!n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§2"&§)
         {
            return;
         }
         if(§1"8§ && §1"8§.visible)
         {
            if(§["#§ < 0)
            {
               §while§.text = "Current channel: ALL";
            }
            else
            {
               §while§.text = "Current channel: " + §["#§;
            }
            if(§4w§ != null)
            {
               §@#0§.text = §4w§;
            }
            _loc1_ = true;
            if(§5G§.scrollV != §5G§.numLines - int(§5G§.height / (§5G§.textHeight / §5G§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §%!M§)
            {
               _loc4_ = (§,"§ + _loc3_ + 1) % 500;
               if(§-#-§[_loc4_] != null)
               {
                  if(§["#§ < 0 || §-#-§[_loc4_][1] == §["#§)
                  {
                     _loc2_ += §-#-§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §5G§.text = _loc2_;
            if(_loc1_)
            {
               §5G§.scrollV = §5G§.numLines;
            }
         }
      }
      
      public static function §5"0§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§2"&§)
         {
            return;
         }
         §1"8§ = new Sprite();
         §1"8§.visible = false;
         param1.addChild(§1"8§);
         var _loc7_:Graphics;
         (_loc7_ = §1"8§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §5G§ = new TextField();
         §5G§.width = param4;
         §5G§.height = param5 - 40;
         §5G§.x = param2;
         §5G§.y = param3 + 40;
         §5G§.wordWrap = true;
         §1"8§.addChild(§5G§);
         §;4§ = new TextField();
         §;4§.x = param2 + param4 / 2;
         §;4§.y = param3;
         §;4§.width = param4 / 2;
         §;4§.height = 20;
         §;4§.text = "LOGGER CAPTURING INPUT, F4";
         §;4§.border = true;
         §;4§.borderColor = 16711680;
         §1"8§.addChild(§;4§);
         §while§ = new TextField();
         §while§.width = param4;
         §while§.height = 20;
         §while§.x = param2;
         §while§.y = param3;
         §1"8§.addChild(§while§);
         §@#0§ = new TextField();
         §@#0§.width = param4;
         §@#0§.height = 20;
         §@#0§.x = param2;
         §@#0§.y = param3 + 20;
         §1"8§.addChild(§@#0§);
         §5"e§(§>!u§);
         if(param6 >= 0)
         {
            param1.addChildAt(§1"8§,param6);
         }
         else
         {
            param1.addChild(§1"8§);
         }
      }
      
      public static function §5"e§(param1:Boolean) : void
      {
         if(!§2"&§)
         {
            return;
         }
         §>!u§ = param1;
         §1"8§.mouseChildren = §>!u§;
         §1"8§.mouseEnabled = §>!u§;
         §while§.mouseEnabled = §>!u§;
         §@#0§.mouseEnabled = §>!u§;
         §5G§.mouseEnabled = §>!u§;
         §;4§.visible = §>!u§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§2"&§)
         {
            return;
         }
      }
      
      public static function §?"@§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §3#%§ = param1;
         §[p§ = param2;
         §5^§ = param3;
      }
      
      public static function §="'§(param1:String) : void
      {
         §4w§ = param1;
      }
   }
}
