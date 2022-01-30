package §"p§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §@8§
   {
      
      public static const §5!n§:Boolean = true;
      
      public static const §>"§:Boolean = true;
      
      public static const §4!y§:int = 0;
      
      public static const §4"0§:int = 1;
      
      public static const §6_§:int = 500;
      
      private static var §6w§:Array = null;
      
      private static var §=!!§:Number = 0;
      
      public static var §^8§:int = Keyboard.F1;
      
      public static var §=-§:int = Keyboard.F3;
      
      public static var §&K§:int = Keyboard.F2;
      
      public static var §@X§:int = Keyboard.F4;
      
      public static var §>!;§:Boolean = false;
      
      public static var §2"?§:Sprite = null;
      
      private static var §#!x§:TextField = null;
      
      private static var §#!`§:TextField = null;
      
      private static var § "3§:TextField = null;
      
      private static var §?!I§:TextField = null;
      
      public static var §3y§:int = -1;
      
      public static var §+!x§:String = "version: Unknown";
      
      public static var §^s§:String = "";
      
      {
         init();
      }
      
      public function §@8§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§5!n§)
         {
            return;
         }
         §6w§ = new Array(§6_§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§5!n§)
         {
            _loc3_ = §=!!§++ % §6_§;
            §6w§[_loc3_] = [param1,param2];
            if(param2 == §3y§ || §3y§ < 0)
            {
               §4p§();
            }
         }
         if(§>"§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §0i§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §4p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§5!n§)
         {
            return;
         }
         if(§2"?§ && §2"?§.visible)
         {
            if(§3y§ < 0)
            {
               § "3§.text = "Current channel: ALL";
            }
            else
            {
               § "3§.text = "Current channel: " + §3y§;
            }
            if(§+!x§ != null)
            {
               §?!I§.text = §+!x§;
            }
            _loc1_ = true;
            if(§#!x§.scrollV != §#!x§.numLines - int(§#!x§.height / (§#!x§.textHeight / §#!x§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §6_§)
            {
               _loc4_ = (§=!!§ + _loc3_ + 1) % 500;
               if(§6w§[_loc4_] != null)
               {
                  if(§3y§ < 0 || §6w§[_loc4_][1] == §3y§)
                  {
                     _loc2_ += §6w§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §#!x§.text = _loc2_;
            if(_loc1_)
            {
               §#!x§.scrollV = §#!x§.numLines;
            }
         }
      }
      
      public static function §<0§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§5!n§)
         {
            return;
         }
         §2"?§ = new Sprite();
         §2"?§.visible = false;
         param1.addChild(§2"?§);
         var _loc7_:Graphics;
         (_loc7_ = §2"?§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §#!x§ = new TextField();
         §#!x§.width = param4;
         §#!x§.height = param5 - 40;
         §#!x§.x = param2;
         §#!x§.y = param3 + 40;
         §#!x§.wordWrap = true;
         §2"?§.addChild(§#!x§);
         §#!`§ = new TextField();
         §#!`§.x = param2 + param4 / 2;
         §#!`§.y = param3;
         §#!`§.width = param4 / 2;
         §#!`§.height = 20;
         §#!`§.text = "LOGGER CAPTURING INPUT, F4";
         §#!`§.border = true;
         §#!`§.borderColor = 16711680;
         §2"?§.addChild(§#!`§);
         § "3§ = new TextField();
         § "3§.width = param4;
         § "3§.height = 20;
         § "3§.x = param2;
         § "3§.y = param3;
         §2"?§.addChild(§ "3§);
         §?!I§ = new TextField();
         §?!I§.width = param4;
         §?!I§.height = 20;
         §?!I§.x = param2;
         §?!I§.y = param3 + 20;
         §2"?§.addChild(§?!I§);
         §0!w§(§>!;§);
         if(param6 >= 0)
         {
            param1.addChildAt(§2"?§,param6);
         }
         else
         {
            param1.addChild(§2"?§);
         }
      }
      
      public static function §0!w§(param1:Boolean) : void
      {
         if(!§5!n§)
         {
            return;
         }
         §>!;§ = param1;
         §2"?§.mouseChildren = §>!;§;
         §2"?§.mouseEnabled = §>!;§;
         § "3§.mouseEnabled = §>!;§;
         §?!I§.mouseEnabled = §>!;§;
         §#!x§.mouseEnabled = §>!;§;
         §#!`§.visible = §>!;§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§5!n§)
         {
            return;
         }
      }
      
      public static function §,n§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §^8§ = param1;
         §&K§ = param2;
         §=-§ = param3;
      }
      
      public static function §!!R§(param1:String) : void
      {
         §+!x§ = param1;
      }
   }
}
