package § !3§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §!X§
   {
      
      public static const §!m§:Boolean = true;
      
      public static const §#k§:Boolean = true;
      
      public static const §"!G§:int = 0;
      
      public static const §5!!§:int = 1;
      
      public static const §<Q§:int = 500;
      
      private static var §=e§:Array = null;
      
      private static var § S§:Number = 0;
      
      public static var §9!G§:int = Keyboard.F1;
      
      public static var §0!@§:int = Keyboard.F3;
      
      public static var §0F§:int = Keyboard.F2;
      
      public static var §7!;§:int = Keyboard.F4;
      
      public static var §#!D§:Boolean = false;
      
      public static var §@!5§:Sprite = null;
      
      private static var §5!§:TextField = null;
      
      private static var §`W§:TextField = null;
      
      private static var §0!Z§:TextField = null;
      
      private static var §4H§:TextField = null;
      
      public static var §6e§:int = -1;
      
      public static var §??§:String = "version: Unknown";
      
      public static var §'g§:String = "";
      
      {
         init();
      }
      
      public function §!X§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§!m§)
         {
            return;
         }
         §=e§ = new Array(§<Q§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§!m§)
         {
            _loc3_ = § S§++ % §<Q§;
            §=e§[_loc3_] = [param1,param2];
            if(param2 == §6e§ || §6e§ < 0)
            {
               §0!G§();
            }
         }
         if(§#k§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §'B§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §0!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§!m§)
         {
            return;
         }
         if(§@!5§ && §@!5§.visible)
         {
            if(§6e§ < 0)
            {
               §0!Z§.text = "Current channel: ALL";
            }
            else
            {
               §0!Z§.text = "Current channel: " + §6e§;
            }
            if(§??§ != null)
            {
               §4H§.text = §??§;
            }
            _loc1_ = true;
            if(§5!§.scrollV != §5!§.numLines - int(§5!§.height / (§5!§.textHeight / §5!§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §<Q§)
            {
               _loc4_ = (§ S§ + _loc3_ + 1) % 500;
               if(§=e§[_loc4_] != null)
               {
                  if(§6e§ < 0 || §=e§[_loc4_][1] == §6e§)
                  {
                     _loc2_ += §=e§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §5!§.text = _loc2_;
            if(_loc1_)
            {
               §5!§.scrollV = §5!§.numLines;
            }
         }
      }
      
      public static function §?[§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§!m§)
         {
            return;
         }
         §@!5§ = new Sprite();
         §@!5§.visible = false;
         param1.addChild(§@!5§);
         var _loc7_:Graphics;
         (_loc7_ = §@!5§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §5!§ = new TextField();
         §5!§.width = param4;
         §5!§.height = param5 - 40;
         §5!§.x = param2;
         §5!§.y = param3 + 40;
         §5!§.wordWrap = true;
         §@!5§.addChild(§5!§);
         §`W§ = new TextField();
         §`W§.x = param2 + param4 / 2;
         §`W§.y = param3;
         §`W§.width = param4 / 2;
         §`W§.height = 20;
         §`W§.text = "LOGGER CAPTURING INPUT, F4";
         §`W§.border = true;
         §`W§.borderColor = 16711680;
         §@!5§.addChild(§`W§);
         §0!Z§ = new TextField();
         §0!Z§.width = param4;
         §0!Z§.height = 20;
         §0!Z§.x = param2;
         §0!Z§.y = param3;
         §@!5§.addChild(§0!Z§);
         §4H§ = new TextField();
         §4H§.width = param4;
         §4H§.height = 20;
         §4H§.x = param2;
         §4H§.y = param3 + 20;
         §@!5§.addChild(§4H§);
         §+!W§(§#!D§);
         if(param6 >= 0)
         {
            param1.addChildAt(§@!5§,param6);
         }
         else
         {
            param1.addChild(§@!5§);
         }
      }
      
      public static function §+!W§(param1:Boolean) : void
      {
         if(!§!m§)
         {
            return;
         }
         §#!D§ = param1;
         §@!5§.mouseChildren = §#!D§;
         §@!5§.mouseEnabled = §#!D§;
         §0!Z§.mouseEnabled = §#!D§;
         §4H§.mouseEnabled = §#!D§;
         §5!§.mouseEnabled = §#!D§;
         §`W§.visible = §#!D§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§!m§)
         {
            return;
         }
      }
      
      public static function §`w§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §9!G§ = param1;
         §0F§ = param2;
         §0!@§ = param3;
      }
      
      public static function §&;§(param1:String) : void
      {
         §??§ = param1;
      }
   }
}
