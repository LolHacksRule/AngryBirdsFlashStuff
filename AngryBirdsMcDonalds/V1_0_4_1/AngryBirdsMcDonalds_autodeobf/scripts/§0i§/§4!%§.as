package §0i§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §4!%§
   {
      
      public static const §,G§:Boolean = true;
      
      public static const §%U§:Boolean = true;
      
      public static const §2m§:int = 0;
      
      public static const §4!=§:int = 1;
      
      public static const §2J§:int = 500;
      
      private static var § !4§:Array = null;
      
      private static var §`D§:Number = 0;
      
      public static var §6!+§:int = Keyboard.F1;
      
      public static var §0y§:int = Keyboard.F3;
      
      public static var §!u§:int = Keyboard.F2;
      
      public static var §1^§:int = Keyboard.F4;
      
      public static var §[!3§:Boolean = false;
      
      public static var §;!F§:Sprite = null;
      
      private static var §0!;§:TextField = null;
      
      private static var §[d§:TextField = null;
      
      private static var §,%§:TextField = null;
      
      private static var §1!8§:TextField = null;
      
      public static var §5h§:int = -1;
      
      public static var § !!§:String = "version: Unknown";
      
      public static var §]4§:String = "";
      
      {
         init();
      }
      
      public function §4!%§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§,G§)
         {
            return;
         }
         § !4§ = new Array(§2J§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§,G§)
         {
            _loc3_ = §`D§++ % §2J§;
            § !4§[_loc3_] = [param1,param2];
            if(param2 == §5h§ || §5h§ < 0)
            {
               §5n§();
            }
         }
         if(§%U§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §0!4§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §5n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§,G§)
         {
            return;
         }
         if(§;!F§ && §;!F§.visible)
         {
            if(§5h§ < 0)
            {
               §,%§.text = "Current channel: ALL";
            }
            else
            {
               §,%§.text = "Current channel: " + §5h§;
            }
            if(§ !!§ != null)
            {
               §1!8§.text = § !!§;
            }
            _loc1_ = true;
            if(§0!;§.scrollV != §0!;§.numLines - int(§0!;§.height / (§0!;§.textHeight / §0!;§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §2J§)
            {
               _loc4_ = (§`D§ + _loc3_ + 1) % 500;
               if(§ !4§[_loc4_] != null)
               {
                  if(§5h§ < 0 || § !4§[_loc4_][1] == §5h§)
                  {
                     _loc2_ += § !4§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §0!;§.text = _loc2_;
            if(_loc1_)
            {
               §0!;§.scrollV = §0!;§.numLines;
            }
         }
      }
      
      public static function §>8§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§,G§)
         {
            return;
         }
         §;!F§ = new Sprite();
         §;!F§.visible = false;
         param1.addChild(§;!F§);
         var _loc7_:Graphics;
         (_loc7_ = §;!F§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §0!;§ = new TextField();
         §0!;§.width = param4;
         §0!;§.height = param5 - 40;
         §0!;§.x = param2;
         §0!;§.y = param3 + 40;
         §0!;§.wordWrap = true;
         §;!F§.addChild(§0!;§);
         §[d§ = new TextField();
         §[d§.x = param2 + param4 / 2;
         §[d§.y = param3;
         §[d§.width = param4 / 2;
         §[d§.height = 20;
         §[d§.text = "LOGGER CAPTURING INPUT, F4";
         §[d§.border = true;
         §[d§.borderColor = 16711680;
         §;!F§.addChild(§[d§);
         §,%§ = new TextField();
         §,%§.width = param4;
         §,%§.height = 20;
         §,%§.x = param2;
         §,%§.y = param3;
         §;!F§.addChild(§,%§);
         §1!8§ = new TextField();
         §1!8§.width = param4;
         §1!8§.height = 20;
         §1!8§.x = param2;
         §1!8§.y = param3 + 20;
         §;!F§.addChild(§1!8§);
         §9!p§(§[!3§);
         if(param6 >= 0)
         {
            param1.addChildAt(§;!F§,param6);
         }
         else
         {
            param1.addChild(§;!F§);
         }
      }
      
      public static function §9!p§(param1:Boolean) : void
      {
         if(!§,G§)
         {
            return;
         }
         §[!3§ = param1;
         §;!F§.mouseChildren = §[!3§;
         §;!F§.mouseEnabled = §[!3§;
         §,%§.mouseEnabled = §[!3§;
         §1!8§.mouseEnabled = §[!3§;
         §0!;§.mouseEnabled = §[!3§;
         §[d§.visible = §[!3§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§,G§)
         {
            return;
         }
      }
      
      public static function §>l§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §6!+§ = param1;
         §!u§ = param2;
         §0y§ = param3;
      }
      
      public static function §>@§(param1:String) : void
      {
         § !!§ = param1;
      }
   }
}
