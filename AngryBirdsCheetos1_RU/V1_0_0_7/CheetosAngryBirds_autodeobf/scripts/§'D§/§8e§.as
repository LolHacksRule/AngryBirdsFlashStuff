package §'D§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §8e§
   {
      
      public static const §7!U§:Boolean = true;
      
      public static const § §:Boolean = true;
      
      public static const §!X§:int = 0;
      
      public static const §6!]§:int = 1;
      
      public static const §?!#§:int = 500;
      
      private static var §9I§:Array = null;
      
      private static var §?#§:Number = 0;
      
      public static var §2s§:int = Keyboard.F1;
      
      public static var §%!2§:int = Keyboard.F3;
      
      public static var §super§:int = Keyboard.F2;
      
      public static var §&j§:int = Keyboard.F4;
      
      public static var §1! §:Boolean = false;
      
      public static var §2§:Sprite = null;
      
      private static var §#!Y§:TextField = null;
      
      private static var §"!V§:TextField = null;
      
      private static var §<L§:TextField = null;
      
      private static var § +§:TextField = null;
      
      public static var §@!>§:int = -1;
      
      public static var §<x§:String = "version: Unknown";
      
      public static var §+Q§:String = "";
      
      {
         init();
      }
      
      public function §8e§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§7!U§)
         {
            return;
         }
         §9I§ = new Array(§?!#§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§7!U§)
         {
            _loc3_ = §?#§++ % §?!#§;
            §9I§[_loc3_] = [param1,param2];
            if(param2 == §@!>§ || §@!>§ < 0)
            {
               §+r§();
            }
         }
         if(§ §)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §][§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §+r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§7!U§)
         {
            return;
         }
         if(§2§ && §2§.visible)
         {
            if(§@!>§ < 0)
            {
               §<L§.text = "Current channel: ALL";
            }
            else
            {
               §<L§.text = "Current channel: " + §@!>§;
            }
            if(§<x§ != null)
            {
               § +§.text = §<x§;
            }
            _loc1_ = true;
            if(§#!Y§.scrollV != §#!Y§.numLines - int(§#!Y§.height / (§#!Y§.textHeight / §#!Y§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §?!#§)
            {
               _loc4_ = (§?#§ + _loc3_ + 1) % 500;
               if(§9I§[_loc4_] != null)
               {
                  if(§@!>§ < 0 || §9I§[_loc4_][1] == §@!>§)
                  {
                     _loc2_ += §9I§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §#!Y§.text = _loc2_;
            if(_loc1_)
            {
               §#!Y§.scrollV = §#!Y§.numLines;
            }
         }
      }
      
      public static function §2&§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§7!U§)
         {
            return;
         }
         §2§ = new Sprite();
         §2§.visible = false;
         param1.addChild(§2§);
         var _loc7_:Graphics;
         (_loc7_ = §2§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §#!Y§ = new TextField();
         §#!Y§.width = param4;
         §#!Y§.height = param5 - 40;
         §#!Y§.x = param2;
         §#!Y§.y = param3 + 40;
         §#!Y§.wordWrap = true;
         §2§.addChild(§#!Y§);
         §"!V§ = new TextField();
         §"!V§.x = param2 + param4 / 2;
         §"!V§.y = param3;
         §"!V§.width = param4 / 2;
         §"!V§.height = 20;
         §"!V§.text = "LOGGER CAPTURING INPUT, F4";
         §"!V§.border = true;
         §"!V§.borderColor = 16711680;
         §2§.addChild(§"!V§);
         §<L§ = new TextField();
         §<L§.width = param4;
         §<L§.height = 20;
         §<L§.x = param2;
         §<L§.y = param3;
         §2§.addChild(§<L§);
         § +§ = new TextField();
         § +§.width = param4;
         § +§.height = 20;
         § +§.x = param2;
         § +§.y = param3 + 20;
         §2§.addChild(§ +§);
         §[2§(§1! §);
         if(param6 >= 0)
         {
            param1.addChildAt(§2§,param6);
         }
         else
         {
            param1.addChild(§2§);
         }
      }
      
      public static function §[2§(param1:Boolean) : void
      {
         if(!§7!U§)
         {
            return;
         }
         §1! § = param1;
         §2§.mouseChildren = §1! §;
         §2§.mouseEnabled = §1! §;
         §<L§.mouseEnabled = §1! §;
         § +§.mouseEnabled = §1! §;
         §#!Y§.mouseEnabled = §1! §;
         §"!V§.visible = §1! §;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§7!U§)
         {
            return;
         }
      }
      
      public static function §-3§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §2s§ = param1;
         §super§ = param2;
         §%!2§ = param3;
      }
      
      public static function §9d§(param1:String) : void
      {
         §<x§ = param1;
      }
   }
}
