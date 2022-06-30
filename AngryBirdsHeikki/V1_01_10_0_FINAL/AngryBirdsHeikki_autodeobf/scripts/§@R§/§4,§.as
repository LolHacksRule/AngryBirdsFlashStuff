package §@R§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §4,§
   {
      
      public static const §8!d§:Boolean = true;
      
      public static const § !8§:Boolean = true;
      
      public static const §#=§:int = 0;
      
      public static const §2!+§:int = 1;
      
      public static const §>!6§:int = 500;
      
      private static var §7!I§:Array = null;
      
      private static var §5?§:Number = 0;
      
      public static var §!!C§:int = Keyboard.F1;
      
      public static var §2y§:int = Keyboard.F3;
      
      public static var §%!<§:int = Keyboard.F2;
      
      public static var §]i§:int = Keyboard.F4;
      
      public static var §@O§:Boolean = false;
      
      public static var §%h§:Sprite = null;
      
      private static var §5O§:TextField = null;
      
      private static var §+d§:TextField = null;
      
      private static var §+N§:TextField = null;
      
      private static var §+!3§:TextField = null;
      
      public static var §@n§:int = -1;
      
      public static var §?!`§:String = "version: Unknown";
      
      public static var §?+§:String = "";
      
      {
         init();
      }
      
      public function §4,§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§8!d§)
         {
            return;
         }
         §7!I§ = new Array(§>!6§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§8!d§)
         {
            _loc3_ = §5?§++ % §>!6§;
            §7!I§[_loc3_] = [param1,param2];
            if(param2 == §@n§ || §@n§ < 0)
            {
               §>![§();
            }
         }
         if(§ !8§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §=k§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §>![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§8!d§)
         {
            return;
         }
         if(§%h§ && §%h§.visible)
         {
            if(§@n§ < 0)
            {
               §+N§.text = "Current channel: ALL";
            }
            else
            {
               §+N§.text = "Current channel: " + §@n§;
            }
            if(§?!`§ != null)
            {
               §+!3§.text = §?!`§;
            }
            _loc1_ = true;
            if(§5O§.scrollV != §5O§.numLines - int(§5O§.height / (§5O§.textHeight / §5O§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §>!6§)
            {
               _loc4_ = (§5?§ + _loc3_ + 1) % 500;
               if(§7!I§[_loc4_] != null)
               {
                  if(§@n§ < 0 || §7!I§[_loc4_][1] == §@n§)
                  {
                     _loc2_ += §7!I§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §5O§.text = _loc2_;
            if(_loc1_)
            {
               §5O§.scrollV = §5O§.numLines;
            }
         }
      }
      
      public static function §10§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§8!d§)
         {
            return;
         }
         §%h§ = new Sprite();
         §%h§.visible = false;
         param1.addChild(§%h§);
         var _loc7_:Graphics;
         (_loc7_ = §%h§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §5O§ = new TextField();
         §5O§.width = param4;
         §5O§.height = param5 - 40;
         §5O§.x = param2;
         §5O§.y = param3 + 40;
         §5O§.wordWrap = true;
         §%h§.addChild(§5O§);
         §+d§ = new TextField();
         §+d§.x = param2 + param4 / 2;
         §+d§.y = param3;
         §+d§.width = param4 / 2;
         §+d§.height = 20;
         §+d§.text = "LOGGER CAPTURING INPUT, F4";
         §+d§.border = true;
         §+d§.borderColor = 16711680;
         §%h§.addChild(§+d§);
         §+N§ = new TextField();
         §+N§.width = param4;
         §+N§.height = 20;
         §+N§.x = param2;
         §+N§.y = param3;
         §%h§.addChild(§+N§);
         §+!3§ = new TextField();
         §+!3§.width = param4;
         §+!3§.height = 20;
         §+!3§.x = param2;
         §+!3§.y = param3 + 20;
         §%h§.addChild(§+!3§);
         §&&§(§@O§);
         if(param6 >= 0)
         {
            param1.addChildAt(§%h§,param6);
         }
         else
         {
            param1.addChild(§%h§);
         }
      }
      
      public static function §&&§(param1:Boolean) : void
      {
         if(!§8!d§)
         {
            return;
         }
         §@O§ = param1;
         §%h§.mouseChildren = §@O§;
         §%h§.mouseEnabled = §@O§;
         §+N§.mouseEnabled = §@O§;
         §+!3§.mouseEnabled = §@O§;
         §5O§.mouseEnabled = §@O§;
         §+d§.visible = §@O§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§8!d§)
         {
            return;
         }
      }
      
      public static function §9r§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §!!C§ = param1;
         §%!<§ = param2;
         §2y§ = param3;
      }
      
      public static function §&!#§(param1:String) : void
      {
         §?!`§ = param1;
      }
   }
}
