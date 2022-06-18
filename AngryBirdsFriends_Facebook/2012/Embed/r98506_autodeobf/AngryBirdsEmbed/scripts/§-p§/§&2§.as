package §-p§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §&2§
   {
      
      public static const §-%§:Boolean = true;
      
      public static const §+O§:Boolean = true;
      
      public static const §@M§:int = 0;
      
      public static const §42§:int = 1;
      
      public static const §52§:int = 500;
      
      private static var §4<§:Array = null;
      
      private static var §0,§:Number = 0;
      
      public static var §+U§:int = Keyboard.F1;
      
      public static var §0f§:int = Keyboard.F3;
      
      public static var §8D§:int = Keyboard.F2;
      
      public static var §1!=§:int = Keyboard.F4;
      
      public static var §@`§:Boolean = false;
      
      public static var §"6§:Sprite = null;
      
      private static var §3!-§:TextField = null;
      
      private static var §'4§:TextField = null;
      
      private static var §1!%§:TextField = null;
      
      private static var §"e§:TextField = null;
      
      public static var §<d§:int = -1;
      
      public static var §!?§:String = "version: Unknown";
      
      public static var §94§:String = "";
      
      {
         init();
      }
      
      public function §&2§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§-%§)
         {
            return;
         }
         §4<§ = new Array(§52§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§-%§)
         {
            _loc3_ = §0,§++ % §52§;
            §4<§[_loc3_] = [param1,param2];
            if(param2 == §<d§ || §<d§ < 0)
            {
               §?0§();
            }
         }
         if(§+O§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §6!2§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §?0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§-%§)
         {
            return;
         }
         if(§"6§ && §"6§.visible)
         {
            if(§<d§ < 0)
            {
               §1!%§.text = "Current channel: ALL";
            }
            else
            {
               §1!%§.text = "Current channel: " + §<d§;
            }
            if(§!?§ != null)
            {
               §"e§.text = §!?§;
            }
            _loc1_ = true;
            if(§3!-§.scrollV != §3!-§.numLines - int(§3!-§.height / (§3!-§.textHeight / §3!-§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §52§)
            {
               _loc4_ = (§0,§ + _loc3_ + 1) % 500;
               if(§4<§[_loc4_] != null)
               {
                  if(§<d§ < 0 || §4<§[_loc4_][1] == §<d§)
                  {
                     _loc2_ += §4<§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §3!-§.text = _loc2_;
            if(_loc1_)
            {
               §3!-§.scrollV = §3!-§.numLines;
            }
         }
      }
      
      public static function § !6§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§-%§)
         {
            return;
         }
         §"6§ = new Sprite();
         §"6§.visible = false;
         param1.addChild(§"6§);
         var _loc7_:Graphics;
         (_loc7_ = §"6§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §3!-§ = new TextField();
         §3!-§.width = param4;
         §3!-§.height = param5 - 40;
         §3!-§.x = param2;
         §3!-§.y = param3 + 40;
         §3!-§.wordWrap = true;
         §"6§.addChild(§3!-§);
         §'4§ = new TextField();
         §'4§.x = param2 + param4 / 2;
         §'4§.y = param3;
         §'4§.width = param4 / 2;
         §'4§.height = 20;
         §'4§.text = "LOGGER CAPTURING INPUT, F4";
         §'4§.border = true;
         §'4§.borderColor = 16711680;
         §"6§.addChild(§'4§);
         §1!%§ = new TextField();
         §1!%§.width = param4;
         §1!%§.height = 20;
         §1!%§.x = param2;
         §1!%§.y = param3;
         §"6§.addChild(§1!%§);
         §"e§ = new TextField();
         §"e§.width = param4;
         §"e§.height = 20;
         §"e§.x = param2;
         §"e§.y = param3 + 20;
         §"6§.addChild(§"e§);
         §8-§(§@`§);
         if(param6 >= 0)
         {
            param1.addChildAt(§"6§,param6);
         }
         else
         {
            param1.addChild(§"6§);
         }
      }
      
      public static function §8-§(param1:Boolean) : void
      {
         if(!§-%§)
         {
            return;
         }
         §@`§ = param1;
         §"6§.mouseChildren = §@`§;
         §"6§.mouseEnabled = §@`§;
         §1!%§.mouseEnabled = §@`§;
         §"e§.mouseEnabled = §@`§;
         §3!-§.mouseEnabled = §@`§;
         §'4§.visible = §@`§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§-%§)
         {
            return;
         }
      }
      
      public static function §&g§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §+U§ = param1;
         §8D§ = param2;
         §0f§ = param3;
      }
      
      public static function §<M§(param1:String) : void
      {
         §!?§ = param1;
      }
   }
}
