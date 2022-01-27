package §`!w§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §^!$§
   {
      
      public static const §3!%§:Boolean = true;
      
      public static const §,p§:Boolean = true;
      
      public static const §7&§:int = 0;
      
      public static const §;!5§:int = 1;
      
      public static const §["D§:int = 500;
      
      private static var §5&§:Array = null;
      
      private static var §,!Y§:Number = 0;
      
      public static var §?!z§:int = Keyboard.F1;
      
      public static var §2!@§:int = Keyboard.F3;
      
      public static var §?2§:int = Keyboard.F2;
      
      public static var §,#§:int = Keyboard.F4;
      
      public static var §<"9§:Boolean = false;
      
      public static var §<R§:Sprite = null;
      
      private static var §5!Z§:TextField = null;
      
      private static var §%"4§:TextField = null;
      
      private static var §9!?§:TextField = null;
      
      private static var § I§:TextField = null;
      
      public static var §%t§:int = -1;
      
      public static var §2!#§:String = "version: Unknown";
      
      public static var §=!H§:String = "";
      
      {
         init();
      }
      
      public function §^!$§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§3!%§)
         {
            return;
         }
         §5&§ = new Array(§["D§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§3!%§)
         {
            _loc3_ = §,!Y§++ % §["D§;
            §5&§[_loc3_] = [param1,param2];
            if(param2 == §%t§ || §%t§ < 0)
            {
               §=!+§();
            }
         }
         if(§,p§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §85§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §=!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§3!%§)
         {
            return;
         }
         if(§<R§ && §<R§.visible)
         {
            if(§%t§ < 0)
            {
               §9!?§.text = "Current channel: ALL";
            }
            else
            {
               §9!?§.text = "Current channel: " + §%t§;
            }
            if(§2!#§ != null)
            {
               § I§.text = §2!#§;
            }
            _loc1_ = true;
            if(§5!Z§.scrollV != §5!Z§.numLines - int(§5!Z§.height / (§5!Z§.textHeight / §5!Z§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §["D§)
            {
               _loc4_ = (§,!Y§ + _loc3_ + 1) % 500;
               if(§5&§[_loc4_] != null)
               {
                  if(§%t§ < 0 || §5&§[_loc4_][1] == §%t§)
                  {
                     _loc2_ += §5&§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §5!Z§.text = _loc2_;
            if(_loc1_)
            {
               §5!Z§.scrollV = §5!Z§.numLines;
            }
         }
      }
      
      public static function §[!T§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§3!%§)
         {
            return;
         }
         §<R§ = new Sprite();
         §<R§.visible = false;
         param1.addChild(§<R§);
         var _loc7_:Graphics;
         (_loc7_ = §<R§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §5!Z§ = new TextField();
         §5!Z§.width = param4;
         §5!Z§.height = param5 - 40;
         §5!Z§.x = param2;
         §5!Z§.y = param3 + 40;
         §5!Z§.wordWrap = true;
         §<R§.addChild(§5!Z§);
         §%"4§ = new TextField();
         §%"4§.x = param2 + param4 / 2;
         §%"4§.y = param3;
         §%"4§.width = param4 / 2;
         §%"4§.height = 20;
         §%"4§.text = "LOGGER CAPTURING INPUT, F4";
         §%"4§.border = true;
         §%"4§.borderColor = 16711680;
         §<R§.addChild(§%"4§);
         §9!?§ = new TextField();
         §9!?§.width = param4;
         §9!?§.height = 20;
         §9!?§.x = param2;
         §9!?§.y = param3;
         §<R§.addChild(§9!?§);
         § I§ = new TextField();
         § I§.width = param4;
         § I§.height = 20;
         § I§.x = param2;
         § I§.y = param3 + 20;
         §<R§.addChild(§ I§);
         § e§(§<"9§);
         if(param6 >= 0)
         {
            param1.addChildAt(§<R§,param6);
         }
         else
         {
            param1.addChild(§<R§);
         }
      }
      
      public static function § e§(param1:Boolean) : void
      {
         if(!§3!%§)
         {
            return;
         }
         §<"9§ = param1;
         §<R§.mouseChildren = §<"9§;
         §<R§.mouseEnabled = §<"9§;
         §9!?§.mouseEnabled = §<"9§;
         § I§.mouseEnabled = §<"9§;
         §5!Z§.mouseEnabled = §<"9§;
         §%"4§.visible = §<"9§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§3!%§)
         {
            return;
         }
      }
      
      public static function §,6§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §?!z§ = param1;
         §?2§ = param2;
         §2!@§ = param3;
      }
      
      public static function §!W§(param1:String) : void
      {
         §2!#§ = param1;
      }
   }
}
