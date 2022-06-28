package §6b§
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
      
      public static const §%!_§:Boolean = true;
      
      public static const §#l§:Boolean = true;
      
      public static const §1o§:int = 0;
      
      public static const §?J§:int = 1;
      
      public static const §`d§:int = 500;
      
      private static var §[G§:Array = null;
      
      private static var § 4§:Number = 0;
      
      public static var §^M§:int = Keyboard.F1;
      
      public static var §%a§:int = Keyboard.F3;
      
      public static var §?C§:int = Keyboard.F2;
      
      public static var §>!7§:int = Keyboard.F4;
      
      public static var §;+§:Boolean = false;
      
      public static var §'!M§:Sprite = null;
      
      private static var §+!O§:TextField = null;
      
      private static var § in§:TextField = null;
      
      private static var §#§:TextField = null;
      
      private static var §#o§:TextField = null;
      
      public static var §^!=§:int = -1;
      
      public static var §@!=§:String = "version: Unknown";
      
      public static var §5!§:String = "";
      
      {
         init();
      }
      
      public function Log()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§%!_§)
         {
            return;
         }
         §[G§ = new Array(§`d§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§%!_§)
         {
            _loc3_ = § 4§++ % §`d§;
            §[G§[_loc3_] = [param1,param2];
            if(param2 == §^!=§ || §^!=§ < 0)
            {
               §2,§();
            }
         }
         if(§#l§)
         {
            if(param1)
            {
            }
         }
      }
      
      public static function §;!C§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §2,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§%!_§)
         {
            return;
         }
         if(§'!M§ && §'!M§.visible)
         {
            if(§^!=§ < 0)
            {
               §#§.text = "Current channel: ALL";
            }
            else
            {
               §#§.text = "Current channel: " + §^!=§;
            }
            if(§@!=§ != null)
            {
               §#o§.text = §@!=§;
            }
            _loc1_ = true;
            if(§+!O§.scrollV != §+!O§.numLines - int(§+!O§.height / (§+!O§.textHeight / §+!O§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §`d§)
            {
               _loc4_ = (§ 4§ + _loc3_ + 1) % 500;
               if(§[G§[_loc4_] != null)
               {
                  if(§^!=§ < 0 || §[G§[_loc4_][1] == §^!=§)
                  {
                     _loc2_ += §[G§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §+!O§.text = _loc2_;
            if(_loc1_)
            {
               §+!O§.scrollV = §+!O§.numLines;
            }
         }
      }
      
      public static function §0!=§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§%!_§)
         {
            return;
         }
         §'!M§ = new Sprite();
         §'!M§.visible = false;
         param1.addChild(§'!M§);
         var _loc7_:Graphics = §'!M§.graphics;
         _loc7_.beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §+!O§ = new TextField();
         §+!O§.width = param4;
         §+!O§.height = param5 - 40;
         §+!O§.x = param2;
         §+!O§.y = param3 + 40;
         §+!O§.wordWrap = true;
         §'!M§.addChild(§+!O§);
         § in§ = new TextField();
         § in§.x = param2 + param4 / 2;
         § in§.y = param3;
         § in§.width = param4 / 2;
         § in§.height = 20;
         § in§.text = "LOGGER CAPTURING INPUT, F4";
         § in§.border = true;
         § in§.borderColor = 16711680;
         §'!M§.addChild(§ in§);
         §#§ = new TextField();
         §#§.width = param4;
         §#§.height = 20;
         §#§.x = param2;
         §#§.y = param3;
         §'!M§.addChild(§#§);
         §#o§ = new TextField();
         §#o§.width = param4;
         §#o§.height = 20;
         §#o§.x = param2;
         §#o§.y = param3 + 20;
         §'!M§.addChild(§#o§);
         §0!H§(§;+§);
         if(param6 >= 0)
         {
            param1.addChildAt(§'!M§,param6);
         }
         else
         {
            param1.addChild(§'!M§);
         }
      }
      
      public static function §0!H§(param1:Boolean) : void
      {
         if(!§%!_§)
         {
            return;
         }
         §;+§ = param1;
         §'!M§.mouseChildren = §;+§;
         §'!M§.mouseEnabled = §;+§;
         §#§.mouseEnabled = §;+§;
         §#o§.mouseEnabled = §;+§;
         §+!O§.mouseEnabled = §;+§;
         § in§.visible = §;+§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§%!_§)
         {
            return;
         }
      }
      
      public static function §8s§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §^M§ = param1;
         §?C§ = param2;
         §%a§ = param3;
      }
      
      public static function §%x§(param1:String) : void
      {
         §@!=§ = param1;
      }
   }
}
