package §9"`§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §-"H§
   {
      
      public static const §+!A§:Boolean = true;
      
      public static const §-"<§:Boolean = true;
      
      public static const §[!4§:int = 0;
      
      public static const §?"i§:int = 1;
      
      public static const §<!§:int = 500;
      
      private static var §7"B§:Array = null;
      
      private static var §&`§:Number = 0;
      
      public static var §0!d§:int = Keyboard.F1;
      
      public static var §5#-§:int = Keyboard.F3;
      
      public static var §-o§:int = Keyboard.F2;
      
      public static var §9" §:int = Keyboard.F4;
      
      public static var §@!b§:Boolean = false;
      
      public static var §?Q§:Sprite = null;
      
      private static var §"!+§:TextField = null;
      
      private static var §`!Q§:TextField = null;
      
      private static var §^"6§:TextField = null;
      
      private static var §;O§:TextField = null;
      
      public static var §'!I§:int = -1;
      
      public static var §'"U§:String = "version: Unknown";
      
      public static var §6"T§:String = "";
      
      {
         init();
      }
      
      public function §-"H§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§+!A§)
         {
            return;
         }
         §7"B§ = new Array(§<!§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§+!A§)
         {
            _loc3_ = §&`§++ % §<!§;
            §7"B§[_loc3_] = [param1,param2];
            if(param2 == §'!I§ || §'!I§ < 0)
            {
               §;"b§();
            }
         }
         if(§-"<§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function § !V§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §;"b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§+!A§)
         {
            return;
         }
         if(§?Q§ && §?Q§.visible)
         {
            if(§'!I§ < 0)
            {
               §^"6§.text = "Current channel: ALL";
            }
            else
            {
               §^"6§.text = "Current channel: " + §'!I§;
            }
            if(§'"U§ != null)
            {
               §;O§.text = §'"U§;
            }
            _loc1_ = true;
            if(§"!+§.scrollV != §"!+§.numLines - int(§"!+§.height / (§"!+§.textHeight / §"!+§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §<!§)
            {
               _loc4_ = (§&`§ + _loc3_ + 1) % 500;
               if(§7"B§[_loc4_] != null)
               {
                  if(§'!I§ < 0 || §7"B§[_loc4_][1] == §'!I§)
                  {
                     _loc2_ += §7"B§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §"!+§.text = _loc2_;
            if(_loc1_)
            {
               §"!+§.scrollV = §"!+§.numLines;
            }
         }
      }
      
      public static function §=!C§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§+!A§)
         {
            return;
         }
         §?Q§ = new Sprite();
         §?Q§.visible = false;
         param1.addChild(§?Q§);
         var _loc7_:Graphics;
         (_loc7_ = §?Q§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §"!+§ = new TextField();
         §"!+§.width = param4;
         §"!+§.height = param5 - 40;
         §"!+§.x = param2;
         §"!+§.y = param3 + 40;
         §"!+§.wordWrap = true;
         §?Q§.addChild(§"!+§);
         §`!Q§ = new TextField();
         §`!Q§.x = param2 + param4 / 2;
         §`!Q§.y = param3;
         §`!Q§.width = param4 / 2;
         §`!Q§.height = 20;
         §`!Q§.text = "LOGGER CAPTURING INPUT, F4";
         §`!Q§.border = true;
         §`!Q§.borderColor = 16711680;
         §?Q§.addChild(§`!Q§);
         §^"6§ = new TextField();
         §^"6§.width = param4;
         §^"6§.height = 20;
         §^"6§.x = param2;
         §^"6§.y = param3;
         §?Q§.addChild(§^"6§);
         §;O§ = new TextField();
         §;O§.width = param4;
         §;O§.height = 20;
         §;O§.x = param2;
         §;O§.y = param3 + 20;
         §?Q§.addChild(§;O§);
         §@-§(§@!b§);
         if(param6 >= 0)
         {
            param1.addChildAt(§?Q§,param6);
         }
         else
         {
            param1.addChild(§?Q§);
         }
      }
      
      public static function §@-§(param1:Boolean) : void
      {
         if(!§+!A§)
         {
            return;
         }
         §@!b§ = param1;
         §?Q§.mouseChildren = §@!b§;
         §?Q§.mouseEnabled = §@!b§;
         §^"6§.mouseEnabled = §@!b§;
         §;O§.mouseEnabled = §@!b§;
         §"!+§.mouseEnabled = §@!b§;
         §`!Q§.visible = §@!b§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§+!A§)
         {
            return;
         }
      }
      
      public static function §+"0§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §0!d§ = param1;
         §-o§ = param2;
         §5#-§ = param3;
      }
      
      public static function §]"K§(param1:String) : void
      {
         §'"U§ = param1;
      }
   }
}
