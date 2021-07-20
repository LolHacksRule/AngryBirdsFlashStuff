package §<u§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class Log
   {
      
      public static const §[!J§:Boolean = true;
      
      public static const §[1§:Boolean = true;
      
      public static const §5!d§:int = 0;
      
      public static const §[!A§:int = 1;
      
      public static const §=v§:int = 500;
      
      private static var §@&§:Array = null;
      
      private static var §?G§:Number = 0;
      
      public static var §6! §:int = Keyboard.F1;
      
      public static var §6!0§:int = Keyboard.F3;
      
      public static var §8!+§:int = Keyboard.F2;
      
      public static var §>9§:int = Keyboard.F4;
      
      public static var §8-§:Boolean = false;
      
      public static var §'+§:Sprite = null;
      
      private static var §;t§:TextField = null;
      
      private static var § !P§:TextField = null;
      
      private static var §8k§:TextField = null;
      
      private static var §?u§:TextField = null;
      
      public static var §^l§:int = -1;
      
      public static var §@!C§:String = "version: Unknown";
      
      public static var §[Q§:String = "";
      
      {
         init();
      }
      
      public function Log()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§[!J§)
         {
            return;
         }
         §@&§ = new Array(§=v§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§[!J§)
         {
            _loc3_ = §?G§++ % §=v§;
            §@&§[_loc3_] = [param1,param2];
            if(param2 == §^l§ || §^l§ < 0)
            {
               §,!?§();
            }
         }
         if(§[1§)
         {
            if(param1)
            {
            }
         }
      }
      
      public static function §3!f§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §,!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§[!J§)
         {
            return;
         }
         if(§'+§ && §'+§.visible)
         {
            if(§^l§ < 0)
            {
               §8k§.text = "Current channel: ALL";
            }
            else
            {
               §8k§.text = "Current channel: " + §^l§;
            }
            if(§@!C§ != null)
            {
               §?u§.text = §@!C§;
            }
            _loc1_ = true;
            if(§;t§.scrollV != §;t§.numLines - int(§;t§.height / (§;t§.textHeight / §;t§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §=v§)
            {
               _loc4_ = (§?G§ + _loc3_ + 1) % 500;
               if(§@&§[_loc4_] != null)
               {
                  if(§^l§ < 0 || §@&§[_loc4_][1] == §^l§)
                  {
                     _loc2_ += §@&§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §;t§.text = _loc2_;
            if(_loc1_)
            {
               §;t§.scrollV = §;t§.numLines;
            }
         }
      }
      
      public static function §>h§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§[!J§)
         {
            return;
         }
         §'+§ = new Sprite();
         §'+§.visible = false;
         param1.addChild(§'+§);
         var _loc7_:Graphics = §'+§.graphics;
         _loc7_.beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §;t§ = new TextField();
         §;t§.width = param4;
         §;t§.height = param5 - 40;
         §;t§.x = param2;
         §;t§.y = param3 + 40;
         §;t§.wordWrap = true;
         §'+§.addChild(§;t§);
         § !P§ = new TextField();
         § !P§.x = param2 + param4 / 2;
         § !P§.y = param3;
         § !P§.width = param4 / 2;
         § !P§.height = 20;
         § !P§.text = "LOGGER CAPTURING INPUT, F4";
         § !P§.border = true;
         § !P§.borderColor = 16711680;
         §'+§.addChild(§ !P§);
         §8k§ = new TextField();
         §8k§.width = param4;
         §8k§.height = 20;
         §8k§.x = param2;
         §8k§.y = param3;
         §'+§.addChild(§8k§);
         §?u§ = new TextField();
         §?u§.width = param4;
         §?u§.height = 20;
         §?u§.x = param2;
         §?u§.y = param3 + 20;
         §'+§.addChild(§?u§);
         §@!?§(§8-§);
         if(param6 >= 0)
         {
            param1.addChildAt(§'+§,param6);
         }
         else
         {
            param1.addChild(§'+§);
         }
      }
      
      public static function §@!?§(param1:Boolean) : void
      {
         if(!§[!J§)
         {
            return;
         }
         §8-§ = param1;
         §'+§.mouseChildren = §8-§;
         §'+§.mouseEnabled = §8-§;
         §8k§.mouseEnabled = §8-§;
         §?u§.mouseEnabled = §8-§;
         §;t§.mouseEnabled = §8-§;
         § !P§.visible = §8-§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§[!J§)
         {
            return;
         }
      }
      
      public static function §=!"§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §6! § = param1;
         §8!+§ = param2;
         §6!0§ = param3;
      }
      
      public static function §<Y§(param1:String) : void
      {
         §@!C§ = param1;
      }
   }
}
