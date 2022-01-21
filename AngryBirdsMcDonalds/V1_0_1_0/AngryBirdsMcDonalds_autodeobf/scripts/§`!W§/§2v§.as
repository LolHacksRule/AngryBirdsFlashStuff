package §`!W§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §2v§
   {
      
      public static const §<!U§:Boolean = true;
      
      public static const §,=§:Boolean = true;
      
      public static const §>!`§:int = 0;
      
      public static const §`U§:int = 1;
      
      public static const §2!H§:int = 500;
      
      private static var §0J§:Array = null;
      
      private static var §%=§:Number = 0;
      
      public static var §!!=§:int = Keyboard.F1;
      
      public static var §?i§:int = Keyboard.F3;
      
      public static var §,G§:int = Keyboard.F2;
      
      public static var §8s§:int = Keyboard.F4;
      
      public static var §"!7§:Boolean = false;
      
      public static var §%M§:Sprite = null;
      
      private static var §+!^§:TextField = null;
      
      private static var §8![§:TextField = null;
      
      private static var §[v§:TextField = null;
      
      private static var §'!d§:TextField = null;
      
      public static var §3!Z§:int = -1;
      
      public static var §5!-§:String = "version: Unknown";
      
      public static var §%S§:String = "";
      
      {
         init();
      }
      
      public function §2v§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§<!U§)
         {
            return;
         }
         §0J§ = new Array(§2!H§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§<!U§)
         {
            _loc3_ = §%=§++ % §2!H§;
            §0J§[_loc3_] = [param1,param2];
            if(param2 == §3!Z§ || §3!Z§ < 0)
            {
               §0!2§();
            }
         }
         if(§,=§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §;^§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §0!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§<!U§)
         {
            return;
         }
         if(§%M§ && §%M§.visible)
         {
            if(§3!Z§ < 0)
            {
               §[v§.text = "Current channel: ALL";
            }
            else
            {
               §[v§.text = "Current channel: " + §3!Z§;
            }
            if(§5!-§ != null)
            {
               §'!d§.text = §5!-§;
            }
            _loc1_ = true;
            if(§+!^§.scrollV != §+!^§.numLines - int(§+!^§.height / (§+!^§.textHeight / §+!^§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §2!H§)
            {
               _loc4_ = (§%=§ + _loc3_ + 1) % 500;
               if(§0J§[_loc4_] != null)
               {
                  if(§3!Z§ < 0 || §0J§[_loc4_][1] == §3!Z§)
                  {
                     _loc2_ += §0J§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §+!^§.text = _loc2_;
            if(_loc1_)
            {
               §+!^§.scrollV = §+!^§.numLines;
            }
         }
      }
      
      public static function §%!H§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§<!U§)
         {
            return;
         }
         §%M§ = new Sprite();
         §%M§.visible = false;
         param1.addChild(§%M§);
         var _loc7_:Graphics;
         (_loc7_ = §%M§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §+!^§ = new TextField();
         §+!^§.width = param4;
         §+!^§.height = param5 - 40;
         §+!^§.x = param2;
         §+!^§.y = param3 + 40;
         §+!^§.wordWrap = true;
         §%M§.addChild(§+!^§);
         §8![§ = new TextField();
         §8![§.x = param2 + param4 / 2;
         §8![§.y = param3;
         §8![§.width = param4 / 2;
         §8![§.height = 20;
         §8![§.text = "LOGGER CAPTURING INPUT, F4";
         §8![§.border = true;
         §8![§.borderColor = 16711680;
         §%M§.addChild(§8![§);
         §[v§ = new TextField();
         §[v§.width = param4;
         §[v§.height = 20;
         §[v§.x = param2;
         §[v§.y = param3;
         §%M§.addChild(§[v§);
         §'!d§ = new TextField();
         §'!d§.width = param4;
         §'!d§.height = 20;
         §'!d§.x = param2;
         §'!d§.y = param3 + 20;
         §%M§.addChild(§'!d§);
         §'K§(§"!7§);
         if(param6 >= 0)
         {
            param1.addChildAt(§%M§,param6);
         }
         else
         {
            param1.addChild(§%M§);
         }
      }
      
      public static function §'K§(param1:Boolean) : void
      {
         if(!§<!U§)
         {
            return;
         }
         §"!7§ = param1;
         §%M§.mouseChildren = §"!7§;
         §%M§.mouseEnabled = §"!7§;
         §[v§.mouseEnabled = §"!7§;
         §'!d§.mouseEnabled = §"!7§;
         §+!^§.mouseEnabled = §"!7§;
         §8![§.visible = §"!7§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§<!U§)
         {
            return;
         }
      }
      
      public static function §6i§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §!!=§ = param1;
         §,G§ = param2;
         §?i§ = param3;
      }
      
      public static function §3!e§(param1:String) : void
      {
         §5!-§ = param1;
      }
   }
}
