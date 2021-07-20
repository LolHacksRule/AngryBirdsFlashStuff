package §+!"§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §5!<§
   {
      
      public static const §%!,§:Boolean = true;
      
      public static const §#G§:Boolean = true;
      
      public static const §"S§:int = 0;
      
      public static const §`N§:int = 1;
      
      public static const §7V§:int = 500;
      
      private static var §?!%§:Array = null;
      
      private static var §2x§:Number = 0;
      
      public static var §5G§:int = Keyboard.F1;
      
      public static var §7v§:int = Keyboard.F3;
      
      public static var §2!'§:int = Keyboard.F2;
      
      public static var §5n§:int = Keyboard.F4;
      
      public static var §[x§:Boolean = false;
      
      public static var §`q§:Sprite = null;
      
      private static var §?A§:TextField = null;
      
      private static var §]!3§:TextField = null;
      
      private static var §>>§:TextField = null;
      
      private static var §?l§:TextField = null;
      
      public static var § !I§:int = -1;
      
      public static var §!!0§:String = "version: Unknown";
      
      public static var §&j§:String = "";
      
      {
         init();
      }
      
      public function §5!<§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§%!,§)
         {
            return;
         }
         §?!%§ = new Array(§7V§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§%!,§)
         {
            _loc3_ = §2x§++ % §7V§;
            §?!%§[_loc3_] = [param1,param2];
            if(param2 == § !I§ || § !I§ < 0)
            {
               §%!5§();
            }
         }
         if(§#G§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §+!A§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §%!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§%!,§)
         {
            return;
         }
         if(§`q§ && §`q§.visible)
         {
            if(§ !I§ < 0)
            {
               §>>§.text = "Current channel: ALL";
            }
            else
            {
               §>>§.text = "Current channel: " + § !I§;
            }
            if(§!!0§ != null)
            {
               §?l§.text = §!!0§;
            }
            _loc1_ = true;
            if(§?A§.scrollV != §?A§.numLines - int(§?A§.height / (§?A§.textHeight / §?A§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §7V§)
            {
               _loc4_ = (§2x§ + _loc3_ + 1) % 500;
               if(§?!%§[_loc4_] != null)
               {
                  if(§ !I§ < 0 || §?!%§[_loc4_][1] == § !I§)
                  {
                     _loc2_ += §?!%§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §?A§.text = _loc2_;
            if(_loc1_)
            {
               §?A§.scrollV = §?A§.numLines;
            }
         }
      }
      
      public static function §'Z§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§%!,§)
         {
            return;
         }
         §`q§ = new Sprite();
         §`q§.visible = false;
         param1.addChild(§`q§);
         var _loc7_:Graphics;
         (_loc7_ = §`q§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §?A§ = new TextField();
         §?A§.width = param4;
         §?A§.height = param5 - 40;
         §?A§.x = param2;
         §?A§.y = param3 + 40;
         §?A§.wordWrap = true;
         §`q§.addChild(§?A§);
         §]!3§ = new TextField();
         §]!3§.x = param2 + param4 / 2;
         §]!3§.y = param3;
         §]!3§.width = param4 / 2;
         §]!3§.height = 20;
         §]!3§.text = "LOGGER CAPTURING INPUT, F4";
         §]!3§.border = true;
         §]!3§.borderColor = 16711680;
         §`q§.addChild(§]!3§);
         §>>§ = new TextField();
         §>>§.width = param4;
         §>>§.height = 20;
         §>>§.x = param2;
         §>>§.y = param3;
         §`q§.addChild(§>>§);
         §?l§ = new TextField();
         §?l§.width = param4;
         §?l§.height = 20;
         §?l§.x = param2;
         §?l§.y = param3 + 20;
         §`q§.addChild(§?l§);
         § Z§(§[x§);
         if(param6 >= 0)
         {
            param1.addChildAt(§`q§,param6);
         }
         else
         {
            param1.addChild(§`q§);
         }
      }
      
      public static function § Z§(param1:Boolean) : void
      {
         if(!§%!,§)
         {
            return;
         }
         §[x§ = param1;
         §`q§.mouseChildren = §[x§;
         §`q§.mouseEnabled = §[x§;
         §>>§.mouseEnabled = §[x§;
         §?l§.mouseEnabled = §[x§;
         §?A§.mouseEnabled = §[x§;
         §]!3§.visible = §[x§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§%!,§)
         {
            return;
         }
      }
      
      public static function §=y§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §5G§ = param1;
         §2!'§ = param2;
         §7v§ = param3;
      }
      
      public static function §3!9§(param1:String) : void
      {
         §!!0§ = param1;
      }
   }
}
