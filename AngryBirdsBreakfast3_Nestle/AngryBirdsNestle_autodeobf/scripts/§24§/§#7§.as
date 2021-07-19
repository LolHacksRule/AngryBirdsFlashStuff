package §24§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §#7§
   {
      
      public static const §!!P§:Boolean = true;
      
      public static const §9"'§:Boolean = true;
      
      public static const §[!C§:int = 0;
      
      public static const §5C§:int = 1;
      
      public static const § B§:int = 500;
      
      private static var §0!`§:Array = null;
      
      private static var §0!l§:Number = 0;
      
      public static var §3!U§:int = Keyboard.F1;
      
      public static var §-h§:int = Keyboard.F3;
      
      public static var §'""§:int = Keyboard.F2;
      
      public static var §0y§:int = Keyboard.F4;
      
      public static var §3&§:Boolean = false;
      
      public static var §`G§:Sprite = null;
      
      private static var §;u§:TextField = null;
      
      private static var §7!^§:TextField = null;
      
      private static var §&h§:TextField = null;
      
      private static var § !U§:TextField = null;
      
      public static var §?!e§:int = -1;
      
      public static var §02§:String = "version: Unknown";
      
      public static var §=d§:String = "";
      
      {
         init();
      }
      
      public function §#7§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§!!P§)
         {
            return;
         }
         §0!`§ = new Array(§ B§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§!!P§)
         {
            _loc3_ = §0!l§++ % § B§;
            §0!`§[_loc3_] = [param1,param2];
            if(param2 == §?!e§ || §?!e§ < 0)
            {
               §9i§();
            }
         }
         if(§9"'§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §;!M§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §9i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§!!P§)
         {
            return;
         }
         if(§`G§ && §`G§.visible)
         {
            if(§?!e§ < 0)
            {
               §&h§.text = "Current channel: ALL";
            }
            else
            {
               §&h§.text = "Current channel: " + §?!e§;
            }
            if(§02§ != null)
            {
               § !U§.text = §02§;
            }
            _loc1_ = true;
            if(§;u§.scrollV != §;u§.numLines - int(§;u§.height / (§;u§.textHeight / §;u§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < § B§)
            {
               _loc4_ = (§0!l§ + _loc3_ + 1) % 500;
               if(§0!`§[_loc4_] != null)
               {
                  if(§?!e§ < 0 || §0!`§[_loc4_][1] == §?!e§)
                  {
                     _loc2_ += §0!`§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §;u§.text = _loc2_;
            if(_loc1_)
            {
               §;u§.scrollV = §;u§.numLines;
            }
         }
      }
      
      public static function §+n§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§!!P§)
         {
            return;
         }
         §`G§ = new Sprite();
         §`G§.visible = false;
         param1.addChild(§`G§);
         var _loc7_:Graphics;
         (_loc7_ = §`G§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §;u§ = new TextField();
         §;u§.width = param4;
         §;u§.height = param5 - 40;
         §;u§.x = param2;
         §;u§.y = param3 + 40;
         §;u§.wordWrap = true;
         §`G§.addChild(§;u§);
         §7!^§ = new TextField();
         §7!^§.x = param2 + param4 / 2;
         §7!^§.y = param3;
         §7!^§.width = param4 / 2;
         §7!^§.height = 20;
         §7!^§.text = "LOGGER CAPTURING INPUT, F4";
         §7!^§.border = true;
         §7!^§.borderColor = 16711680;
         §`G§.addChild(§7!^§);
         §&h§ = new TextField();
         §&h§.width = param4;
         §&h§.height = 20;
         §&h§.x = param2;
         §&h§.y = param3;
         §`G§.addChild(§&h§);
         § !U§ = new TextField();
         § !U§.width = param4;
         § !U§.height = 20;
         § !U§.x = param2;
         § !U§.y = param3 + 20;
         §`G§.addChild(§ !U§);
         §,P§(§3&§);
         if(param6 >= 0)
         {
            param1.addChildAt(§`G§,param6);
         }
         else
         {
            param1.addChild(§`G§);
         }
      }
      
      public static function §,P§(param1:Boolean) : void
      {
         if(!§!!P§)
         {
            return;
         }
         §3&§ = param1;
         §`G§.mouseChildren = §3&§;
         §`G§.mouseEnabled = §3&§;
         §&h§.mouseEnabled = §3&§;
         § !U§.mouseEnabled = §3&§;
         §;u§.mouseEnabled = §3&§;
         §7!^§.visible = §3&§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§!!P§)
         {
            return;
         }
      }
      
      public static function §5,§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §3!U§ = param1;
         §'""§ = param2;
         §-h§ = param3;
      }
      
      public static function §>j§(param1:String) : void
      {
         §02§ = param1;
      }
   }
}
